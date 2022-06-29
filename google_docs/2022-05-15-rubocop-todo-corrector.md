---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/VnJZMUPS7wT7iW277F7-0SgkfP4qd2JZLkj9Oz26dwPLlQ7q2QRgvc_lHURc3N2oCARaW_D18MOAl5TBbagkRiC79Uj4upfqoNBuT7Lu_TD7_0Tg2dTKYTbMsJU4_zn_c1oyAxzGghP5LnSyNg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/SPZec8vsXoiVy9OFTkK85Fuz2f5Bjuhpuy_Gfu9GgzQLJHyEHO6TFZAfUi6vydAu7YN18kJOUDA1F7wAseKJLarR3x53l0rfL7oix-n3TxQ1t1_B_oCgVYwvNQBSYydRWbue5kHqApk8Gz4Ueg)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
