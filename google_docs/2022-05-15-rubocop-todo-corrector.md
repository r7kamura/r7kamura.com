---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/XmSE_UNFMh90zk2mwX-fONccbnfApXL-GejuGhaQmU9557IjxiygP_VTv-KRTWZriw_9_K96RL0pZn01vJIdbmkU1U-cH9btbfBi4OK7NK-jOfBF5iuqYELoPEj59Z5oeeP1OH0Aec0VsB2HYDUUFw)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/w5fj8AVwA9QEAjKRWgXXKTNJy4crRkwq6TcYt3Yc2KMT6leqNIV5Gw_TE6blP0_E68Y9Q_c0aPMxR99VC-bkJTgtsk471RDK89NjebmRvN9bNrKhZuIUkUZ52GpeINSapFjtrWTejc11yZocLos5Pw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
