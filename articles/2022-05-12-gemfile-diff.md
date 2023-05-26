---
title: 2つのGemfile.lockの差分を検知する
---
というGitHub ActionsのCustom actionを書いた。大きなバージョン変更の過渡期など、2つのGemfile.lockを並行運用する場合におすすめ。

[https://github.com/r7kamura/gemfile-diff](https://github.com/r7kamura/gemfile-diff)

2つのGemfile.lock
---------------

そもそもGemfile.lockが2つあるってどういう状況だ？

これは例えば、並行運用する期間を設けながら、丁寧にGemのバージョンを上げるときに発生する。具体的には、Rails 5.2とRails 6.0のようなケース。[ANDPAD Rails 6.0へのアップグレード - ANDPAD Tech Blog](https://tech.andpad.co.jp/entry/2021/02/25/170000)という記事でも、実際にそういう例を紹介している。

Rails 5.2版Gemfile.lockとRails 6.0版Gemfile.lockを抱えているとする。これに全然関係なく「devise gemのバージョンを上げるぞ」という活動が発生する。bundle update –conservative devise が実行されてPull Requestがつくられる。本当は BUNDLE\_GEMFILE=Gemfile-rails-6-0 bundle update –conservative devise も実行しなければならない。しかし忘れられている。CIが成功してmergeされる。こうなると、Rails 6.0で新しい版のdeviseが動くかどうか分からない。

更新忘れを検知
-------

CIで差分を検知し、2つのGemfile.locktが正しく更新されていなければ失敗させたい。そういうときにGitHub Actionsで便利に使えるのが今回つくった[gemfile-diff](https://github.com/r7kamura/gemfile-diff)というCustom action。

ちなみにこれはファイルをRubyで読み込んで内容を比較するだけなので、普段CircleCIとかを利用しているプロジェクトでも別に問題無く使える。この検知にだけGitHub Actionsを使えば良い。話としてはRuboCopとかと同じ。
