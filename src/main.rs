mod client;
mod handlers;
mod models;
mod parser;
mod path_finder;

use actix_files::Files;
use actix_web::web::get;
use actix_web::{App, HttpServer};
use client::Client;
use handlers::{list_links, show_article, show_feed, show_sitemap, show_top_page};
use std::fs;
use std::path::Path;
use structopt::StructOpt;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    match Opt::from_args() {
        Opt::Serve {} => run()?.await,
        Opt::Build {} => build().await,
    }
}

#[derive(Debug, StructOpt)]
#[structopt(about = "Powers r7kamura.com.")]
enum Opt {
    #[structopt(about = "Build static files.")]
    Build {},

    #[structopt(about = "Run HTTP server.")]
    Serve {},
}

async fn build() -> std::io::Result<()> {
    let _ = run().unwrap();
    let client = Client::new();
    for path in path_finder::all() {
        println!("{}", path);
        let (bytes, canonical_path) = client.get(&path).await;
        let output_path_string = format!("output{}", canonical_path);
        let output_path: &Path = output_path_string.as_ref();
        if let Some(parent) = output_path.parent() {
            if !parent.exists() {
                let _ = fs::create_dir_all(parent);
            }
        }
        if !output_path.is_dir() {
            let _ = fs::write(output_path, bytes);
        }
    }
    Ok(())
}

fn run() -> std::io::Result<actix_web::dev::Server> {
    let server = HttpServer::new(move || {
        App::new()
            .route("/", get().to(show_top_page))
            .route("/articles/{article_id}", get().to(show_article))
            .route("/feed.xml", get().to(show_feed))
            .route("/links", get().to(list_links))
            .route("/sitemap.txt", get().to(show_sitemap))
            .service(Files::new("/", "./static").show_files_listing())
    })
    .bind("127.0.0.1:8080")?
    .run();
    Ok(server)
}
