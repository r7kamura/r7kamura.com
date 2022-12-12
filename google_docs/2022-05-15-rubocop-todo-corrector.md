---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/H_1p_xTTIQUNpqefmRJ2le2GxOBveF349UeLz07r5gKwofYCYlvFadO91hryMNw1b65o687aQaqMO-abbPHek0ZDHNMmzwTbNtaVLqDoN6ihbTApe1i73_o4YUiydAR6OFJHSkxNn4yElUNaygIz6XcGLnqphO5N7ymc0mbe-lH3SKrzAnR4NzuYB1eN)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/XtqseCwjHHjF1ooU_nQD63L7ERPoFaP5qXlgwcGUVCTRXsxex7BTCjtJkpS7MVpdhkBJEH4U5nCRJHW-tWyxuNcNBEoJWyPVfsYrMc-BREWapefzboGbzed498UiHxc_UInoshARfzwBz2CgPJxzFCNqUpqaU8v0l_cc2lWxj9-4Q5ESX6XkAsQNdAzv)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
