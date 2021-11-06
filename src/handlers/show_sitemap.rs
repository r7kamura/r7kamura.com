use crate::models::{Article, ArticleDecorator};
use actix_web::{HttpResponse, Responder};
use std::iter::Iterator;

pub async fn show_sitemap() -> impl Responder {
    let mut articles: Vec<Article> = Article::all().collect();
    articles.sort_by_key(|article| article.date);
    articles.reverse();
    let body = render(articles.into_iter());
    HttpResponse::Ok()
        .content_type("text/plain; charset=\"utf-8\"")
        .body(body)
}

fn render(articles: impl Iterator<Item = Article>) -> String {
    articles
        .map(|article| {
            format!(
                "https://r7kamura.com{}",
                ArticleDecorator::from(article).canonical_path
            )
        })
        .collect::<Vec<String>>()
        .join("\n")
}

#[cfg(test)]
mod tests {
    use super::render;
    use crate::models::Article;

    #[test]
    fn render_returns_ok() {
        let article = Article::find("2021-10-21-zero-to-production-in-rust").unwrap();
        let articles = vec![article].into_iter();
        render(articles);
    }
}
