---
title: テキストの引越し
---

自分の書いた文章が急に消えたり、いつの間にか意図していない形で表示されるようになったりすることが怖くなってきた。そこで、各サービスに投稿していたテキストデータを徐々に引っ越してきて、GitHubで管理していくことにした。

これまでこういう状態だった。

- Hatena Blog
    - 雑記
    - 日記
    - 2009年〜2019年
- Medium
    - 雑記
    - 技術記事
    - 2017年〜2019年
- Patreon
    - 技術記事
    - 2018年〜2019年
- Qiita
    - 技術記事
    - 2014年〜2016年
- Twitter
    - つぶやき
    - 2011年〜2019年

これからはこういう状態にしようとしている。

- GitHub
    - 雑記
    - 日記
    - 技術記事
    - 2009年〜2019年
- Twitter
    - つぶやき
    - 2011年〜2019年

テキストデータはfrontmatter付きのMarkdownとして記述することにした。人間が書いて機械が読む、というところでバランスが取れるギリギリの妥協点だと思う。プレーンテキストとして読めるようなMarkdownを心掛けたい。

データの保存と整形と公開はGitHubにやってもらう。何かの間違いで全てが消えてしまうかもしれないから、たまにバックアップを取って、どこか遠いところに保存しておく。

とにかく安心感を得たい。見る側のための行動ではなくて、書く側のための行動である。移行にあたって、失われる情報もあるだろうし、これまで各サービスを通して自分の文章を見てくれていた人達に対しては、不便を感じさせてしまうと思う。そこについては本当に申し訳ない。

---

以下は泥臭い引越し作業の話。

Qiitaは記事のエクスポートに対応していないけど、[increments/qiita-rb][1]を使うと、Qiitaの記事をJSON形式で簡単にエクスポートできる。これぐらいならCLIでも簡単。

```
gem install qiita
qiita list_user_items r7kamura per_page=100 > items.json
```

記事の削除もCLIで出来るけど、jqとかでごにょごにょやるのはちょっと面倒なので、Ruby向けのAPIを使う。

```
require "qiita"

client = Qiita::Client.new(
  access_token: ENV["QIITA_ACCESS_TOKEN"]
)

response = client.list_user_items(
  "r7kamura",
  per_page: 100
)
response.body.each do |item|
  begin
    client.delete_item(item["id"])
  rescue
    retry
  end
end
```

いいねが数百件以上付いた記事の削除は、体感50%ぐらいの確率でタイムアウトするので、無限にリトライさせて対応した。

MediumはHTMLでエクスポートされるので、最初はNokogiriでぎこぎこやっていたのだけど、途中からおかしいと思い始めて「medium export markdown」でググった。[medium-2-md][2]でMarkdownに変換できて最高。アカウントを仮削除状態にできるボタンもあるので移行が捗る。

はてなブログはMovableType形式でエクスポートされるので、文字列操作で適当にゴニョゴニョやってMarkdown化する。Patreonも今のところ良いエクスポート方法が無さそうなので、Nokogiriでぎこぎこやる予定。

エクスポートしてきた記事にはそれぞれ、frontmatter部分にエクスポート元のサービス名を記述してある。現状はまだ不要なマークアップが含まれてしまっているので、将来この部分を綺麗にするためにサービス名の情報を使う。

全部終わったら、今度は記事に含まれる画像のURLを探索して、適切なサービスに移し替えたい。

[1]: https://github.com/increments/qiita-rb
[2]: https://hackernoon.com/medium-2-md-convert-medium-posts-to-markdown-with-front-matter-c044e02c3cbb
