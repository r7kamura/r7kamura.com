---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/Se3zOOJ0ef3cekvxFfb23dVgzInRSsMNdUua1v6_cKD9GiX5S2GQbwSat_JnPAcYTcTXVSYykerzycqWUx4Wi1SAsSxRICZP3fqzl6JINpY6gidtvjzV4Q_d83pmlA0cawRBAsvD6YCXmPjS3zIuFHXvTdkawlSC3unYunv9kbAPkr7PmfosENWJpSBI)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/qd7lHUAbkmgJ0pL-BhkgdRgrnjCBNNbNJ2s71M2sXcn4kE6B9NlcdFXu9yAznl9ceuOpqQwj91oq0jzwFNd2qWU_LJVCA2GfhG9RlkZS__ccQ7b26--jF2GqIb1_mXwP0Qg5-hlmnSVAwJrt44t6ZUOR9--pd0Te3V7LURti5uAMRNGKUVz5fxy20Mtj)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
