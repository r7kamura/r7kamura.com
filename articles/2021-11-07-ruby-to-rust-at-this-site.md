---
title: Rustでサイトを再実装
---

このサイト r7kamura.com の実装言語をRubyからRustに変えてみた。

## アプリケーションの概観

このサイトには、大別すると次の6種類のルーティングパターンがある。

- `GET /`
    - トップページ
- `GET /articles/:article_id`
    - 記事ページ
- `GET /feed.xml`
    - RSSフィード
- `GET /links`
    - リンク集
- `GET /sitemap.txt`
    - サイトマップ (Google Search Console等が利用する)
- `GET /*`
    - その他の静的ファイル (CSSや画像など)

Rubyの実装では、適当なRackアプリケーション + [rack-capture](https://github.com/r7kamura/rack-capture)という構成で、Webアプリケーションとして実装しつつGitHub Pagesのために静的ファイルも吐き出せるという仕組みになっていた。

Rustの実装もほぼ同じで、適当なHTTPサーバー + 適当なHTTPクライアントという構成で、同じような仕組みにした。Rackという層が無くなり、単純にHTTPの層でやり取りすることになった。

## r7k crate

Rustのプログラムをビルドしたいタイミングと、サイトを更新したいタイミングとが異なるので、運用を楽にするためにリポジトリを2つに分けることにした。

- <https://github.com/r7kamura/r7k>
    - プログラム
- <https://github.com/r7kamura/r7kamura.com>
    - Markdownファイルや画像など

r7kamura/r7kは、静的ファイルの書き出し、及びプレビュー用HTTPサーバーの起動を行う、`r7k` というコマンドを提供する。これがRustのbinary crateとして実装されている。

```console
$ r7k --help
r7k 0.1.0
Powers r7kamura.com.

USAGE:
    r7k <SUBCOMMAND>

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

SUBCOMMANDS:
    build    Build static files.
    help     Prints this message or the help of the given subcommand(s)
    serve    Run HTTP server.
```

ビルド済みの単一バイナリをGitHub Releasesに載せているので、r7kamura/r7kamura.comでは記事が更新されるたびにGitHub Actionsを実行し、これを利用して静的ファイルの書き出しを行い、GitHub Pagesに生成物をアップロードすることで、サイトが更新されるという流れになっている。

Rustのプログラムの内容をふんわりと紹介するために、依存しているライブラリについて幾つか言及しておこうと思う。

上の例で見えているようなCLIツールとしての機能は、structoptというcrateを使って実装した。RustでEnumやStructからなる素朴な型を用意して、structoptの提供するマクロで修飾しておいてあげると、コマンドラインオプションをパースしてその型の値にパースしてくれるような機能を提供してくれるというやつ。

- <https://github.com/TeXitoi/structopt>

HTTP周りのあれこれには、actix-webというcrate使った。最近のRustには、Futureという非同期処理用の仕組みと、async/awaitという構文上のサポートが備わっている。
この仕組みの利用者は、非同期処理を駆動させるためのランタイムを別途与える必要がある訳だが、その選択肢の1つにtokioという実装がある。
このtokioを利用しつつ、Actorモデルという並行処理における1つのモデルを提供するactixというフレームワークがあり、更にこれを利用したWebアプリケーションフレームワークとしてactix-webがある。

- <https://github.com/actix/actix-web>

actix-webは、HTTPサーバーだけでなく実はHTTPクライアントの機能も提供しているので、今回の用途にも上手く適していた。理論的には、同じ非同期処理ランタイムのtokioを使うHTTPクライアントなら協調して動かせるはずなのだけど (例えばreqwestなど)、外部のものを使おうとすると、依存しているtokioのバージョンが合わずにトラブルに巻き込まれることもあるので、抱き合わせで提供してくれるのは意外とありがたかったりする。

そこまで見慣れないcrateとしては他に、HTMLやXMLを生成するためのテンプレートエンジンとしてaskamaを、CommonMark準拠のパーサーとしてpulldown-cmarkを、記事本文から細かいメタデータを抽出するためのHTMLパーサーとしてscraperを使っている。

- <https://github.com/djc/askama>
- <https://github.com/raphlinus/pulldown-cmark>
- <https://github.com/causal-agent/scraper>

## 再実装時に変えた挙動

Markdown (をベースとした方言) で書かれた記事データの変換結果が変わり、結果的に生成されるHTMLに違いが出ることになった。変換前まではGitHub Flavored Markdownに準拠したRedcarpetというMarkdownパーサーを利用しており、かつ生成後のHTMLにも幾つか後処理を加えていた。この後処理をやめ、更にCommonMarkに準拠したMarkdownパーサーを利用するように変えたので、次のような追加機能が色々と取り払われた。

- 画像へのリンクの付与
    - 画像のURLへのリンクを付与する
- 画像のキャプションの付与
    - title属性があればfigcaption要素等を利用した形式に変える
- AmazonのURLの自動変換
    - 正規化してアソシエイトIDを付与する
- ImgurのURLの自動変換
    - リンク先を画像ではなくImgurの画像ページに差し替える

どれも便利だったが、無くても破綻する訳ではなく、またこういった機能が無くともたのしく読めるような本文を書くことを志向した方が良いかもしれないなとは思っていたので、取り除いてみることにした次第だ。

実装が面倒だという側面もあることは否めない。RubyのNokogiriぐらい便利なものがあれば実装しても良かったのだけど、scraperは用途的に読込専用だし、html5ever (scraperも内部的に利用している、比較的低レイヤーなAPIを提供するHTMLパーサー) を直接使うのも結構たいへんだ。

## Rustの学習に使ったもの

Rustでまともなプログラムを書くのは今回が初めてだったので、いきなり新しい言語でプログラムを書き始めるのではなく、次の教材で少し学んでから着手した。

1. [The Rust Programming Language](https://doc.rust-lang.org/book/)
2. [Rust by Example](https://doc.rust-lang.org/rust-by-example/)
3. [Zero To Production In Rust](https://www.lpalmieri.com/posts/2020-05-24-zero-to-production-0-foreword/)

『Zero To Production In Rust』は今回つくろうとしてたものと題材が似ているということもあって、Rustでのプログラムの分割法、実装時の思考方法、actix-webの使用例、HTTPサーバーとHTTPクライアントを並行して動かす例などを学べ、今回非常に役に立った。
