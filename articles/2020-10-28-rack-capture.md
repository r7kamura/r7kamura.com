---
title: Rackアプリの魚拓
---

RackアプリとURL群から静的ファイルを生成する[rack-capture](https://github.com/r7kamura/rack-capture)をつくった。

[このサイトの実装 2020年版](http://localhost:9292/articles/2020-09-23-this-site-setup-2020)でも書いたように、このサイトはRackアプリとして実装されていて、GitHubのリポジトリに変更が加わるたびに全ページのスナップショットが静的ファイルとして出力され、それが配信される仕組みになっている。その静的ファイル生成の仕組みを今回ライブラリとして切り出した。

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

このサイトの場合はこういう感じのものが呼び出されることになる。実際には、articlesディレクトリとstaticディレクトリの中身を見ながらもう少し動的にURL群を用意しているが、大体こんな感じ。

---

今日のYak Shaving。これをつくっている最中で、Bundlerが生成するREADMEに無駄な空行が含まれているのが気になり、結局Bundlerに[Pull Request](https://github.com/rubygems/rubygems/pull/4041)を出すことになった。
