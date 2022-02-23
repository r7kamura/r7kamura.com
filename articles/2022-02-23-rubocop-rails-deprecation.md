---
title: rubocop-rails_deprecation
---

[rubocop-rails_deprecation](https://github.com/r7kamura/rubocop-rails_deprecation)というGemをつくった。

Railsで廃止予定の機能に遭遇するたびに手作業で検知して修正するのは、正直言って効率も悪いし修正漏れも出てくる。そう前から思っていたので、RuboCopを利用して静的解析で検知・自動修正できるようにしてみたという背景。とりあえず直近で自分が遭遇した、`to_s(...)` を `to_formatted_s(...)` に書き換える、というやつについてのCopを用意できた。Rails 7.0からの変更なので、検査対象のRailsのバージョンによって有効化されるかどうかが変わるようになっている。
