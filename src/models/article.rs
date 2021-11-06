use crate::parser;
use chrono::NaiveDate;
use globwalk::glob;
use serde::Serialize;
use std::convert::TryFrom;
use std::fs::File;
use std::io::prelude::*;
use std::iter::Iterator;

#[derive(Serialize)]
pub struct Article {
    pub date: NaiveDate,
    pub html_body: String,
    pub image_url: Option<String>,
    pub slug: Option<String>,
    pub title: String,
    pub summary: Option<String>,
}

impl Article {
    pub fn all() -> impl Iterator<Item = Self> {
        glob("articles/*.md")
            .unwrap()
            .flatten()
            .map(|entry| Article::find(path_to_id(entry.path().to_str().unwrap())).unwrap())
    }

    pub fn find(id: &str) -> Result<Self, Error> {
        let path = format!("./articles/{}.md", id);
        let mut file = File::open(path).map_err(|_| Error::FileOpen)?;
        let mut content = String::new();
        file.read_to_string(&mut content)
            .map_err(|_| Error::FileRead)?;
        let metadata = Metadata::try_from(id)?;
        let data = parser::parse(&content).map_err(|_| Error::ContentParse)?;
        Ok(Article {
            date: metadata.date,
            html_body: data.html_body,
            image_url: data.image_url,
            slug: metadata.slug,
            title: data.title,
            summary: data.summary,
        })
    }

    pub fn canonical_path(&self) -> String {
        format!("/articles/{}", self.id())
    }

    pub fn id(&self) -> String {
        let mut result = self.date.format("%Y-%m-%d").to_string();
        if self.slug.is_some() {
            result = format!("{}-{}", result, &self.slug.as_ref().unwrap());
        }
        result
    }
}

#[derive(Debug)]
pub enum Error {
    FileRead,
    FileOpen,
    MetadataParse,
    ContentParse,
}

struct Metadata {
    pub date: NaiveDate,
    pub slug: Option<String>,
}

impl TryFrom<&str> for Metadata {
    type Error = Error;

    fn try_from(id: &str) -> Result<Self, Self::Error> {
        let segments: Vec<&str> = id.splitn(4, '-').collect();
        if segments.len() < 3 {
            return Err(Error::MetadataParse);
        }

        let year: i32 = segments[0].parse().map_err(|_| Error::MetadataParse)?;
        let month: u32 = segments[1].parse().map_err(|_| Error::MetadataParse)?;
        let day: u32 = segments[2].parse().map_err(|_| Error::MetadataParse)?;
        let date = NaiveDate::from_ymd(year, month, day);

        let slug = if segments.len() == 4 {
            Some(segments[3].to_string())
        } else {
            None
        };

        Ok(Self { date, slug })
    }
}

fn path_to_id(path: &str) -> &str {
    match path.split('/').last() {
        Some(value) => value.trim_end_matches(".md"),
        _ => path,
    }
}

#[cfg(test)]
mod tests {
    use super::Article;
    use super::Metadata;
    use chrono::NaiveDate;
    use std::convert::TryFrom;

    #[test]
    fn find_article_from_id() {
        let article = Article::find("2021-10-21-zero-to-production-in-rust").unwrap();
        assert_eq!(article.title, "『Zero To Production In Rust』を読んでいる");
        assert_eq!(article.slug, Some("zero-to-production-in-rust".to_string()));
        assert_eq!(article.date, NaiveDate::from_ymd(2021, 10, 21));
    }

    #[test]
    fn convert_slugged_id_to_metadata() {
        let result = Metadata::try_from("2000-01-01-a");
        let metadata = result.unwrap();
        assert_eq!(metadata.date, NaiveDate::from_ymd(2000, 1, 1));
        assert_eq!(metadata.slug, Some("a".to_string()));
    }

    #[test]
    fn convert_non_slugged_id_to_metadata() {
        let result = Metadata::try_from("2000-01-01");
        let metadata = result.unwrap();
        assert_eq!(metadata.date, NaiveDate::from_ymd(2000, 1, 1));
        assert_eq!(metadata.slug, None);
    }
}
