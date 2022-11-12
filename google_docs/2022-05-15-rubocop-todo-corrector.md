---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/-4nGRuKwHVSE6l_dObeSbNG_gBX7Dg3r3vFtkw133dMofaw6ohL1yeBMH6ewxhCjrzysyXH2KPhl5vANW5UjBztxoo1bh42xsosINUiU7sBV24yTPp034Wg8kqrvqtrl8NcpI0NYUZqBfYSDfuHJxwgXA11TM51xo41aDVb108SlEY7EhAWbLLDxLFSh)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/zUA7Z4R4U3BEmawdvfAz8ch-T6NcWckV1OxEFrSoTqReQH8MymXaBHthfx3EhqUvHt-TthgnNN2XrZqP3UdAZ5eqLEMcMGNowO1K62yAmfurlcxUYfbD2ChZjt5amL9QAE0Xz0d9cut9jq7CfZ9nvhKc6b2ziz0q_uRPLXYa2JI74FXeOPhr-ae5vshW)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
