use actix_web::{HttpResponse, Responder};
use askama::Template;

pub async fn list_links() -> impl Responder {
    let body = render().expect("Error on rendering template.");
    HttpResponse::Ok()
        .content_type("text/html; charset=\"utf-8\"")
        .body(body)
}

#[derive(Template)]
#[template(path = "./list_links.html")]
struct ListLinksTemplate<'a> {
    canonical_url: &'a str,
    description: &'a str,
    image_url: Option<&'a str>,
    og_type: &'a str,
    request_host: &'a str,
    title: &'a str,
}

fn render() -> Result<String, askama::Error> {
    let template = ListLinksTemplate {
        canonical_url: "https://r7kamura.com/links",
        description: "このウェブサイトに関連するリンク集。",
        image_url: None,
        og_type: "article",
        request_host: "r7kamura.com",
        title: "リンク集",
    };
    template.render()
}

#[cfg(test)]
mod tests {
    use super::render;

    #[test]
    fn render_returns_ok() {
        assert!(render().is_ok());
    }
}
