---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/z5qohtGaQj2F9BDA05lfIpA1Klh7mgD-HmGdkUseO1N10MOGog3lrHr6B2p5xs_yWwrO9AiFnvB7YtsRF2zlJR4gdIM9nIw_2P_op8tpypdh_smIGaPqZ8MOKAWR8BgYhkcaTaw4ArZyQ8k6Aw)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/7jbWdcGTPoaL7zAw_Y2imddBM-6ncEGrqhl-F5VQUWFcUWvLT43pu131lyoGQGktu6dBdf1gMdrzNcevAaCiLUIYYfzrnb4ZHGevX3xE9MBuc2roGRlQP5O-RAKbzulbCL0xnk2MzUHMk3yV_A)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
