use crate::models::{Article, ArticleDecorator};
use actix_web::{HttpResponse, Responder};
use askama::Template;
use std::iter::Iterator;

pub async fn show_top_page() -> impl Responder {
    let mut articles: Vec<Article> = Article::all().collect();
    articles.sort_by_key(|article| article.date);
    articles.reverse();
    let body = render(articles.into_iter()).expect("Error on rendering template.");
    HttpResponse::Ok()
        .content_type("text/html; charset=\"utf-8\"")
        .body(body)
}

#[derive(Template)]
#[template(path = "./show_top_page.html")]
struct ShowTopPageTemplate<'a> {
    articles: Vec<ArticleDecorator>,
    canonical_url: &'a str,
    description: &'a str,
    image_url: Option<&'a str>,
    og_type: &'a str,
    request_host: &'a str,
    title: &'a str,
}

fn render(articles: impl Iterator<Item = Article>) -> Result<String, askama::Error> {
    let article_decorators: Vec<ArticleDecorator> =
        articles.map(|article| article.into()).collect();
    let template = ShowTopPageTemplate {
        articles: article_decorators,
        canonical_url: "https://r7kamura.com/",
        description: "このウェブサイトでは、r7kamura (Ryo Nakamura) が、日々の生活やプログラミングに関する記事を公開しています。",
        image_url: None,
        og_type: "website",
        request_host: "r7kamura.com",
        title: "r7kamura.com",
    };
    template.render()
}

#[cfg(test)]
mod tests {
    use super::render;
    use crate::models::Article;

    #[test]
    fn render_returns_ok() {
        let article = Article::find("2021-10-21-zero-to-production-in-rust").unwrap();
        let articles = vec![article].into_iter();
        let result = render(articles);
        assert!(result.is_ok());
    }
}
