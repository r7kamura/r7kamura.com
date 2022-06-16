---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/_DJ9fF7QC0ZhjiQrxb9BIh_zso1X6ZnNNEQIDxGjxbVutaM5evFgmvRUOXt_Gm9Lj-2vkA8nfBUYLH-zq61Og9ZPC-MbaSOKaTte8t0O45Bmnwr0FihxMyIOU1EFnxFoj_DKWZA4JZiAv8VFYA)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/uuz7zDELavx-36tsLLNfnlIO4PRLDXACyXMncSvqqVmch_zD1wyGBB_O2OEUeAI3_N7_i5OPjSbXRqC8bT6HMDc7K4ahTcBB18rnkjDTK4B4ivq7TzQOo-0IVCHO7EgYR3_9o_kpV414r-JDtw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
