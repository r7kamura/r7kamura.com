---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/m1lhhXwbM8EF6OiT9BUbFVHO5bR3Sio93SQTaLb5l_Qdb11cKBM6UCupTwJHr0SV84mrWo8a7vQ7g8r8r3CIPf8S5B6UdJ9boqQdGQvr3eCeEa5-gE7Hs1gAkkGzA8SBT1DignNX5Y5m1SXr-0qTIA)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/GPMjMTzNXpjfpNiH9qwdqpzkN8oRY0tBy9MJB5i1gDQIlzRxs1XBbiKt3rNELloR_fcCyVO35Km4v87WGG5YLr5tLhnQ8sqsaDnep4wraFzZSWF9HCX6ghNR3bVxVYRViaJGlsjTcGRlURU50vUt9A)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
