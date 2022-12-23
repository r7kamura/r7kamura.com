---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/DSTLoaXtlqv0gzOnPBA8pCxVoBK02dvefKofJs-xKsuuXALLYmR5l2qkROP7ZBggIIrVLOyT2ZUmK5E2EWZOlG8Sj0ERz9k-uSI7LcxQDkrwnBj3JvHEnUK72m4H-E3Ruk3XWqMsdOI-8K1aLIcxtuW6dBBmRxOxX-JvDJVi3E-s-2ZarqZSGEIil6Ls)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/cPF0tiMtsA7DNgGu7_Nsr-JlCab2sY7ujHz0piVX28CZ84_Ue1TLZybHQduA4w6v_wHMwlmQdmRJbSIz0KdEpf0VAdHPuCQS6_q5NaH4ew6EdNw-Ne8EzA1_gB3b9b1D7nUgtTzrtDvMn-c43egN6j1iG-iweHItKRDO0W-o-74r4QYI8pa7V-brnbcK)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
