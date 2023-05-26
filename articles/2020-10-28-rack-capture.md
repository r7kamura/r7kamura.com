---
title: rack-capture
---

[rack-capture](https://github.com/r7kamura/rack-capture)というGemをつくった。

## 概要

RackアプリとURLを与えると、レスポンスボディを静的ファイルとして書き出してくれる、というもの。

## 背景

[このサイトの設計 2020年版](/articles/2020-09-23-this-site-setup-2020)でも書いたように、このサイトのベースはRackアプリとして実装されている。手元でプレビューするときも、rackupを使って動作確認している。GitHub Pagesでホスティングするために、その時点での全ページのスナップショットを静的ファイルとして書き出す必要がある訳だが、そのためにこの実装を用意していた。今回はその仕組みを整えて、Gemとして切り出した。

```
%w[
  https://r7kamura.com/
  https://r7kamura.com/articles
  https://r7kamura.com/articles/2020-10-30.html
  https://r7kamura.com/articles/2020-10-29.html
  https://r7kamura.com/articles/2020-10-28.html
  https://r7kamura.com/feed.xml
  https://r7kamura.com/sitemap.txt
].each do |url|
  Rack::Capture.call(
    app: my_rack_application,
    url: url
  )
end
```

このサイトの場合は、こういう感じのものが呼び出されることになる。実際には、articlesディレクトリとstaticディレクトリの中身を見ながらもう少し動的にURL群を用意しているが、大体こんな感じ。

---

## 後日譚

これをつくっている最中で、Bundlerが生成するREADMEに無駄な空行が含まれているのが気になり、結局Bundlerに[Pull Request](https://github.com/rubygems/rubygems/pull/4041)を出すことになった。後日Mergeされたので、次バージョンのBundlerからは生成されるREADMEがより簡潔なものになるはず。
