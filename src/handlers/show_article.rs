use crate::models::{Article, ArticleDecorator};
use actix_web::web::Path;
use actix_web::{HttpResponse, Responder};
use askama::Template;

pub async fn show_article(article_id: Path<String>) -> impl Responder {
    let article = Article::find(&article_id).unwrap();
    let body = render(article).unwrap();
    HttpResponse::Ok()
        .content_type("text/html; charset=\"utf-8\"")
        .body(body)
}

#[derive(Template)]
#[template(path = "./show_article.html")]
struct ShowArticleTemplate<'a> {
    article: &'a ArticleDecorator,
    canonical_url: &'a str,
    description: &'a str,
    image_url: Option<&'a str>,
    og_type: &'a str,
    request_host: &'a str,
    title: &'a str,
}

fn render(article: Article) -> Result<String, askama::Error> {
    let article: ArticleDecorator = article.into();
    let canonical_url = format!("https://r7kamura.com{}", article.canonical_path);
    let template = ShowArticleTemplate {
        article: &article,
        canonical_url: &canonical_url,
        description: article.summary.as_deref().unwrap_or(""),
        image_url: article.image_url.as_deref(),
        og_type: "article",
        request_host: "r7kamura.com",
        title: &article.title,
    };
    template.render()
}

#[cfg(test)]
mod tests {
    use super::render;
    use crate::models::Article;

    #[test]
    fn render_works() {
        let article = Article::find("2021-10-21-zero-to-production-in-rust").unwrap();
        let result = render(article);
        assert!(result.is_ok());
    }
}
