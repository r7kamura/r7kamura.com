---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/hRSFeaZAggf3K_wqOrle2lqiY31IPtsTXdQ6GpndIHVeq4DKDtYaEUTqAVLwcWK2us3rjOPQf6nJG6G2YQivFErlbIOXzyielk-9Qmyg9f_m6HycLLH4-M3NU5-_ipy62FczXHwTo_CK1TPAZPoy6g)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/VYg4RT9l_Nyb0ltfai4X7mufUE28OMlPxkg-cVqYWQnMsSXCIuA-GlTcza4pPQDKfZa1mCNZiV-Y8BSXgBDed8MqyMNz1wyxi8FNd1Qq5FYHIDvxzE7_Dw1pMG-TEtK_afD5_GCH9j-dId8fVp8MYg)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
