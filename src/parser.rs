use pulldown_cmark::{html, Options, Parser};
use scraper::{Html, Selector};
use serde::Deserialize;

pub fn parse(content: &str) -> Result<Data, Error> {
    let (yaml, markdown) = split(content)?;
    let frontmatter = parse_yaml(yaml)?;
    let html_body = parse_markdown(markdown);
    let title = if frontmatter.title == "~" {
        "".to_string()
    } else {
        frontmatter.title
    };
    let summary = extract_summary(&html_body);
    let image_url = extract_image_url(&html_body);
    Ok(Data {
        html_body,
        image_url,
        summary,
        title,
    })
}

#[derive(Debug)]
pub struct Data {
    pub title: String,
    pub html_body: String,
    pub image_url: Option<String>,
    pub summary: Option<String>,
}

#[derive(Debug)]
pub enum Error {
    Frontmatter,
}

#[derive(Deserialize)]
struct Frontmatter {
    title: String,
}

fn parse_markdown(content: &str) -> String {
    let mut options = Options::empty();
    options.insert(Options::ENABLE_STRIKETHROUGH);
    let parser = Parser::new_ext(content, options);
    let mut string = String::new();
    html::push_html(&mut string, parser);
    string
}

fn parse_yaml(content: &str) -> Result<Frontmatter, Error> {
    serde_yaml::from_str(content).map_err(|_| Error::Frontmatter)
}

fn split(content: &str) -> Result<(&str, &str), Error> {
    let segments: Vec<&str> = content.splitn(3, "---\n").collect();
    if segments.len() != 3 {
        return Err(Error::Frontmatter);
    }
    let yaml = segments[1];
    let markdown = segments[2];

    Ok((yaml, markdown))
}

fn truncate(str: &str, max_characters_count: usize) -> &str {
    match str.char_indices().nth(max_characters_count) {
        None => str,
        Some((index, _)) => &str[..index],
    }
}

fn extract_summary(html: &str) -> Option<String> {
    let selector = Selector::parse("* > p").unwrap();
    let fragment = Html::parse_fragment(html);
    for element in fragment.select(&selector) {
        let texts: Vec<_> = element.text().collect();
        let inner = texts.join("");
        if !inner.is_empty() {
            let str = inner.split_inclusive("。").next().unwrap();
            let truncated = truncate(str, 140);
            return Some(truncated.to_string());
        }
    }
    None
}

fn extract_image_url(html: &str) -> Option<String> {
    let fragment = Html::parse_fragment(html);
    let selector = Selector::parse("img[src]").unwrap();
    fragment
        .select(&selector)
        .next()
        .map(|element| element.value().attr("src").unwrap().to_string())
}

#[cfg(test)]
mod tests {
    use super::{extract_image_url, extract_summary, parse};

    #[test]
    fn parse_returns_error_to_empty_content() {
        let content = "";
        let result = parse(content);
        assert!(result.is_err());
    }

    #[test]
    fn parse_returns_error_to_no_title_content() {
        let content = "---\n---\nbody\n";
        let result = parse(content);
        assert!(result.is_err());
    }

    #[test]
    fn parse_works() {
        let content = "---\ntitle: title\n---\nこんにちは。![](http://example.com/image.jpg)\n";
        let result = parse(content);
        let data = result.unwrap();
        assert_eq!(data.title, "title".to_string());
        assert_eq!(
            data.html_body,
            "<p>こんにちは。<img src=\"http://example.com/image.jpg\" alt=\"\" /></p>\n"
                .to_string()
        );
        assert_eq!(data.summary, Some("こんにちは。".to_string()));
        assert_eq!(
            data.image_url,
            Some("http://example.com/image.jpg".to_string())
        );
    }

    #[test]
    fn parse_works_to_empty_title_content() {
        let content = "---\ntitle:\n---\nbody\n";
        let result = parse(content);
        let data = result.unwrap();
        assert_eq!(data.title, "".to_string());
        assert_eq!(data.html_body, "<p>body</p>\n".to_string());
    }

    #[test]
    fn extract_summary_returns_none_to_empty_html() {
        let html = "";
        let option = extract_summary(html);
        assert!(option.is_none());
    }

    #[test]
    fn extract_summary_returns_summary_to_simple_paragraph() {
        let html = "<p>a b c.</p>";
        let option = extract_summary(html);
        let summary = option.unwrap();
        assert_eq!(summary, "a b c.");
    }

    #[test]
    fn extract_summary_returns_summary_to_linked_paragraph() {
        let html = "<p><a href=''>a</a> b c.</p>";
        let option = extract_summary(html);
        let summary = option.unwrap();
        assert_eq!(summary, "a b c.");
    }

    #[test]
    fn extract_summary_returns_summary_to_multiple_japanese_sentences() {
        let html = "<p>あ。い。</p>";
        let option = extract_summary(html);
        let summary = option.unwrap();
        assert_eq!(summary, "あ。");
    }

    #[test]
    fn extract_image_url_returns_ok_when_single_img_exists() {
        let html = r#"<p><img src="http://example.com/image.jpg"></p>"#;
        let option = extract_image_url(html);
        let image_url = option.unwrap();
        assert_eq!(image_url, "http://example.com/image.jpg");
    }

    #[test]
    fn extract_image_url_returns_image_url_when_single_img_exists() {
        let html = r#"<p><img src="http://example.com/image.jpg"></p>"#;
        let option = extract_image_url(html);
        let image_url = option.unwrap();
        assert_eq!(image_url, "http://example.com/image.jpg");
    }

    #[test]
    fn extract_image_url_returns_first_image_url_when_multi_img_exists() {
        let html = r#"<p><img src="http://example.com/image1.jpg"></p><p><img src="http://example.com/image2.jpg"></p>"#;
        let option = extract_image_url(html);
        let image_url = option.unwrap();
        assert_eq!(image_url, "http://example.com/image1.jpg");
    }

    #[test]
    fn extract_image_url_returns_none_when_no_img_exists() {
        let html = "<p>a</p>";
        let option = extract_image_url(html);
        assert!(option.is_none());
    }

    #[test]
    fn extract_image_url_returns_none_when_no_srced_img_exists() {
        let html = r#"<p><img></p>"#;
        let option = extract_image_url(html);
        assert!(option.is_none());
    }
}
