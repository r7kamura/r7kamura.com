---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/jPx8k7wNqVu66OceHWWIPWvgBzB-36NvvRPZKDrHeeOi4redh76LUfros_mJktLD-GDw3OSltP_mjjKE81DIJmUP9pnQSc6As39cHfiDifh74nAN4gsYeuq-Fpz6qHAvA8Ly8Oe18-wfFbH1Cg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/zITGZ_c4vyomQs7iQP6R-vmSScR-Gf8j72MmNBlf9k14NWlu4ckXvaPRTv4Ieqqwl4HHOeYPLZuUZKVq0zUHBTaQtAnYW0QSy2hnY1op22JCRbbJSn0StyzhHGCQS7_ErJNW_0YMZeTAPT_Skw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
