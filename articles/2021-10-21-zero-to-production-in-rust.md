---
title: 『Zero To Production In Rust』を読んでいる
---

初学者用のRustの教材として、RustでWebアプリケーションのサーバーサイド側をつくる一連のチュートリアル記事、『Zero To Production In Rust』を読んでみている。

- <https://www.lpalmieri.com/posts/2020-05-24-zero-to-production-0-foreword/>

一気に読んでいるかのような雰囲気でさらりと書いているが、仕事と遊びの合間に少しずつ、数日に1章程度の速度でゆっくり読み進めている。

## 問題駆動型の学習方法が嬉しい

知らない知識を複数同時に与えると学習効率が悪くなりがちなので、ある程度基礎部分を学んだら、少し難易度の高い領域であっても、自分の馴染みのある分野でどう使うかという話を例に学んでいく方が良いと考えている。今回の自分のケースの場合、Webアプリケーション開発という題目がそれにあたる。分からないところが出てくるたびに調べつつ、同時に調べ方も学んでいく──という方法は子供時代から自分が好んできたやり方で、この教材の筆者もそう考えているとのことらしい。

「このシステムではこういう機能があって…」と機能の方から学んでいくとなかなか頭に入ってこないものだが、「こういう問題を解決するにはこの機能が使えて…」という導入があると、自然と頭に入ってきやすい。このチュートリアルでは、所有権、型、可視性、エラーハンドリング、マクロといった事柄について、現実的な問題を起点に学べるように構成されていて、そこが嬉しい。

Rustは自分では大したアプリケーションを書いたこともなく、全く得意な方ではないし、複雑な型やジェネリクス、クロージャなどを活用したコードは未だに解説付きで読んでもすぐに理解できないことが多いが、それでもこのチュートリアルの内容は非常に面白く読み進められている。やはり題目がWebアプリケーション開発なところが大きい。RubyやGoだと大抵こうするよなという点と比較するのも面白いし、Railsで同じことを実現しようとするとこういう仕組みがあると良いのでは、などと知見を持ち帰ることを考えるのも楽しい。

## actix-webのExtractorsが面白い

個人的に今回初見で興味深いなと感じたのは、題材で使っているactix-webというWebアプリケーションフレームワークの、Extractorsという仕組み。HTTPリクエストから特定のパラメーターを抽出したいときに、リクエストを処理するハンドラー関数の引数の型情報を利用して、型安全な形でそれを実現できるというもの。

```
#[derive(Deserialize)]
struct Parameters {
  username: String,
}

#[get("/")]
async fn index(parameters: web::Query<Parameters>) -> String {
  format!("Welcome {}!", parameters.username)
}
```

こういう形で「Parameters型のデータが欲しいです」ということを引数で表現しておけば、内部的にこの情報を使って引数を用意してくれる。型を表現しない（する必要がない）動的型付けの言語ではこういった表現方法は取りにくい。例えばRailsの似たような実装だと、ハンドラー関数の仮引数の名前を利用してパラメーターを引数としても渡してくれるように出来るaction_argsというライブラリがあるが、actix-webのExtractorsを見た後だと、やはり大きな物足りなさを感じてしまう。こういった観点の変化こそ、新しいものを学んで得られる面白さの一つだ。

- <https://actix.rs/docs/extractors/>
- <https://github.com/asakusarb/action_args>

---

『Zero To Production In Rust』の記事をまとめたものを電子書籍として販売しているようなので、興味が湧いた人はそちらも見てみてほしい。

- <https://www.zero2prod.com/>
