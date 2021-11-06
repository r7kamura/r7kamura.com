use crate::models::{Article, ArticleDecorator};
use actix_web::{HttpResponse, Responder};
use askama::Template;
use chrono::{FixedOffset, Utc};
use std::iter::Iterator;

pub async fn show_feed() -> impl Responder {
    let mut articles: Vec<Article> = Article::all().collect();
    articles.sort_by_key(|article| article.date);
    articles.reverse();
    let articles = articles.drain(..20);
    let body = render(articles).unwrap();
    HttpResponse::Ok()
        .content_type("application/xml; charset=\"utf-8\"")
        .body(body)
}

#[derive(Template)]
#[template(path = "./show_feed.xml")]
struct ShowFeedTemplate<'a> {
    articles: Vec<ArticleDecorator>,
    canonical_url: &'a str,
    current_time_in_rfc2822: &'a str,
    description: &'a str,
    request_base_url: &'a str,
}

fn render(articles: impl Iterator<Item = Article>) -> Result<String, askama::Error> {
    let article_decorators: Vec<ArticleDecorator> =
        articles.map(|article| article.into()).collect();
    let template = ShowFeedTemplate {
        articles: article_decorators,
        current_time_in_rfc2822: &Utc::now().with_timezone(&FixedOffset::east(60 * 60 * 9)).to_rfc2822(),
        canonical_url: "https://r7kamura.com/feed.xml",
        description: "このウェブサイトでは、r7kamura (Ryo Nakamura) が、日々の生活やプログラミングに関する記事を公開しています。",
        request_base_url: "https://r7kamura.com"
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
