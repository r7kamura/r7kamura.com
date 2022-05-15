---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/GRDj2a0iISXKXx9_frySazqt73UVFQfzIQ49DfFFRKy7l-s_8iOiRc7sCyP-z3t_jdSMTBw1ZFN4wXb9u1qHN3ypa9kOOGhRDfYu3DavcHtl8w1eanhRdv9CBk84dSDBKwMI1kgFLHVMWHgyyw)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/p8wo_gvxD_S_pg_1vSIE1JS2oGSznFtLJ1cMEEwHGV81JiEVV4lrKg84WClfg5y-FTO70YnpJ0aMuxfyDdomyAcEuwVLRBCZE0egVGSxkNwj-1DAs3h-0-GpIUEA-B1SOmRWN3-8k6XFk6Fg2A)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
