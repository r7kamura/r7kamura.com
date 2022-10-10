---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/Dw3M5fU6kBIE6bRWP9yZzVzjSL3_Nu-Vds8-unSac1Qi0pJlT1JN-kszciVawtCuxcXD4TvIfkO6FRB0EqfOPKxy0yqdfW_TtgWFD4-RHcgfTKNbMrxb6qxNWYT4fICcvATRQI2xu1XeYButc_9MOCNZtI18lqN5mnbGtmktctBVD2TZyiMcj8rT)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/l-8nG3kdtQTGAFjOucSqdBhv31fMZpe6da4ltUjI4kTGYnDjRuHK2TvzfedxaUL-BQ8OXfwTk3pf8affoHlg_iJ6nhcDd3Cj3H4LlrKXpzY-GfbMtpY8iapwKEgwkpa-ozhSkfVKRDA1Te62hiR2QpaGjjs0OhYU1hHORA_KFJzCNds-3eN8MOM5)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
