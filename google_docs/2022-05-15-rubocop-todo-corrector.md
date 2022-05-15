---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/mZ0rsd8nZipb5wlhB_v_YG_FQj1oVzY2sCa6wU2rvYn1Ps3s-fyKl11wT5VJEQ5z3Gobe0IF6tWKJyEowHrniBY5U8W2ixWcEJyj228biNMn3RYXu4jq2yT2ha87uNgGDjhpGHYVfD8CDIO0TQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/CZ-6EUGlTnxkMOvwCpq1Z_FGxnAiKp4qKmzZFF6yuBNnB6mteEfpmPj3VmtapxjXvNs6GavsiN62GeOFxFssmc5Hp_vis_9896nrVKt745Gr3d-Pf-FsXhAvNNdhZc4MjGPXhqtHN9LC48561Q)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
