---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/Hi7-F4dyCUxSjNjnwuSSY1eXiqiao3DiP9RR30gwdHeHwDxTi46JPlTDn7YEIV9SfvI_HgT67Ldd3v90r6XUGdMx2cqURFXVSaLtJ_YHffhneuU6JSDnpZUcAsA2Q3867cPFMyzwFVuSv4VE7Q)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/3sz_7sPu3QkRaG4LOl26WcfLziCx_xS80IDODKXZhsrp0wxlxZKsOx3uCHc_tXOSBZ_0WT_lWO4FXAaWK_tZ4mSCL8OXY6tiBZq2FIqb18OCW--IUz4bBPIx2oyKZtPBGHv-15qa06Neq7LH4Q)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
