use actix_web::client::Client as ActixClient;

pub struct Client {
    actix_client: ActixClient,
}

impl Client {
    pub fn new() -> Self {
        Self {
            actix_client: ActixClient::default(),
        }
    }

    pub async fn get(&self, path: &str) -> (impl AsRef<[u8]>, String) {
        let url = format!("http://localhost:8080{}", path);
        let mut response = self.actix_client.get(url).send().await.unwrap();
        let headers = response.headers();
        let mut canonical_path = path.to_string();
        if path.ends_with('/') {
            canonical_path.push_str("index");
        }
        if let Some(content_type) = headers.get("Content-Type") {
            if String::from_utf8(content_type.as_ref().to_vec())
                .unwrap()
                .starts_with("text/html")
            {
                canonical_path.push_str(".html");
            }
        };
        let body = response.body().limit(10485760).await.unwrap();
        (body, canonical_path)
    }
}
