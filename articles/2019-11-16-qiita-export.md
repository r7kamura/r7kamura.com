---
title: Qiitaの記事のエクスポートと削除
---

Qiitaに投稿していたテキストをGitHubに引越した。

[increments/qiita-rb][1]を使うと、Qiitaの記事をJSON形式で簡単にエクスポートできる。これぐらいならCLIでも簡単。

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

[1]: https://github.com/increments/qiita-rb
