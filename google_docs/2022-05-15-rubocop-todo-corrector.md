---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/cafvCmGSmHI3vIymzQm6iKlsJ9qtBSr4kaHlLHI5xq5yJnY2f58fVaTKThtHgi1F2jxr3HEUiOfhwXQukq9CfFd0FNuGq2ZnHFu7n4GHLbOwwQKb8sg4C6aCNmOo4PMWfwGrT66ZTmBCiKooqQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/aHMFQgjHp_-xO0y9Ww_jgpaHfamnMA6f0xlGSLnYcbDoKaQ6SJSRbOaWj82_u0YyiLg0g6EaHC3AM9SRL6ZoBplgVUuFCNChb9TwOj8TITlCmBRceHBqIxISMdMwzAYek0N_VoPFFYqM-_ENsQ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
