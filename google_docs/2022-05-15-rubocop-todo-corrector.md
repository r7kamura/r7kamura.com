---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/nh6yu5okpBx85c_qMApHHRn248Baq0OHyRgdeiuzpa3IdGQy3as12inb2L1oZgCTraAUFeb1yQbwYnVCXWaATAv1ubRrhVxlQG6peaWSbKt0Y_R9c4f1YH7_jtqKedRGONCrqICHybahGPA5avAxVpIS9BOnkD5hfuIPNbCGS9LREY8d40w3qgR9)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/qXkC44R9Z8yG0gZkVvTLqg7bB-7nPlW3497tmQ5qOGMv67uUR5T3_E0e28Sw1UWepbUhqbPRpsBnAxjiSMDETE1xbHXtcGJjEF1JMunSZoEBpAby0oBIOODOFUtlSjQJMrRSFZe2vQ_D9tXUB-CDoZ6NMWvY_yemiLvuC_buSph8OqFg1fhfF0js)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
