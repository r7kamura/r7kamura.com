---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/5tT9foz5g_GP842FRXVhrDjDg749pfC4EAgLKoZadlyuIEIAxXzLgXojNWMtYSkO7HBC0ynN_k766rOsBWKqA8swcZNYbD2DnSYd9hronatu5oL-PD8a-PiKZglEMs3h9R9CuFlYnzwRjpfX3a1OTMbWS6hfngsR3Si-GjifWWk3Ct7G--RaRlgtFuq0)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/igSPs_uNrPEJq0rxy1DGh8NLE2Q-JaSR9JGNJAXO35il9xKUrxBPggJC8NJL-QxBn6sYnPoe6wi5HRzCPYPMEgJRnvvagjB3inw0UKtl9l0k5d5FZUReY0ldTgJK-C3_cpI1xaFb7owsCvyc_kOdas9g6AzA4YJl0ezED0V-hGTqAIeiunlrZjgeLjUW)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
