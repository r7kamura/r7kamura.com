---
title: ActiveStorageを使うテストを1つのファイルで書く
---

ActiveStorageを使ったテストを書きたいときに、わざわざRailsアプリを1つ用意するのは手間が掛かるので、単一ファイルで完結するような書き方を模索してみた。

https://gist.github.com/r7kamura/7ee56572693fcd07a17219cd0ee6a4ca に動くコードがある。Rubyスクリプトとして実行すればOK。

以下は奇妙なところについての説明。

## Rails.application.initialize!

ActiveStorageはRails Engineとして実装されていて、アプリケーションの初期化フェーズで色々な準備が行われる。`Rails.application.initialize!`を呼んでいないと、例えば、`has_one_attached` メソッドがActiveRecord::Baseを継承したクラスの特異メソッドとして呼び出せない。

## DATABASE_URL

以下の背景でゴニョゴニョしている。

- `ENV['DATABASE_URL']` が無いと、config/database.yml を読みに行ってしまう
- `establish_connection(...)` を呼んでないと、DBに接続できない

この辺理解が浅くて、とりあえず動く形にしてしまっている。同じ処理を二度別の形で書いてしまっているので、もっと良いやり方があるかもしれない。
