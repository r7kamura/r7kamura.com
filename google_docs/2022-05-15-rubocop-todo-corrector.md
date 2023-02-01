---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/vXf6SmRcR11BWeSIMxpQMApxyIw0L4ulam5TrYnFexGOH0zL0p4NFs79Duf8s07pCSkxABZv7J6nnmzy0cGNlGDC5_F8r7T-xblgj_Ce04_3oBYokY5hKwJEOzemsleERvl_eNZ7tQjvQsJdoX_ghQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/GIAK875H5NryHAD6dWETbzG2YL-fbnWEbG6DXBubl7h5lbr8LRio5t_JJq6Xgz7gKDTx_hsCLI-NvkEnIRsorvWLu7t2tVg0CfeGQofbIPkG-Rb8_wxkN-i7DDpcgbudtWJ0JDJ5dsecUf12_s0N2Q)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
