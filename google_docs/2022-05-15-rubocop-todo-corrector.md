---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/Uff7_GH8h-CYI9T4ae1z-7YuDKerfxzI4mLABtTBx6cqlT6-KMKsXzIJYGHuA8jev70-qtFgsspm7uCAPuNdoapPOYhTScveHh-C0lpHb2VveGgb3TznEGrsjMgxV3hS9US6y5Ryj8XGzip-p701yg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/1GmksuvUvetoZ90_LF-xpIwJ7z1_FanWe3Tiya6jCZ_pC280xzNjHDkZTTDMvB46KLW1XAd8V9ZNI70y-GXHBjXf4cq-E4x-oU_akVvMd4g9FVBxb2t1AYQnYiLF3lhxafB2xgyK2LZ9XLWvKJvyyQ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
