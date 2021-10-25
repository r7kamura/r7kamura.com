use crate::models::Article;
use globwalk::glob;

// Returns all available URL paths of this website.
pub fn all() -> impl Iterator<Item = String> {
    article_paths().chain(other_paths()).chain(asset_paths())
}

fn article_paths() -> impl Iterator<Item = String> {
    Article::all().map(|article| format!("/articles/{}", article.id()))
}

fn asset_paths() -> impl Iterator<Item = String> {
    glob("static/**/*")
        .unwrap()
        .flatten()
        .map(|entry| entry.path().to_str().unwrap()[1..].to_string())
}

fn other_paths() -> impl Iterator<Item = String> {
    ["/", "/feed.xml", "/links", "/sitemap.txt"]
        .iter()
        .map(|&element| element.into())
}
