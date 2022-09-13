---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/JXXhEnbk0XCQIjtnjO6PblCVvt3oxqGBRhxskDxd6oxFPSvX-25_1OVjp6ZwzDhbitSQLHZMyPaxAwI8Zq6OrDHE9-PZ3mPHnveoUVA2Jb-CYE2GZz_gLWVA7TUOasIn_C6nXVZl3v8VQ57igLS76xoddhvJ8ziEwlJrcPUEMCviUxiQ-PxCW7Df)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/1R0vadfdrBeZk4Noe5h62Jp439NLrPE2llMqs6z5gtOuGUyg9Q544g4ijnfOTVYg8UQUD9I826jUNdbF9BDFlh6ZKIhrVmD932d2z7LD6Z0PyRGbYKOWOFL-23jp2H7haGYZwcXT3TXRGqM_gNQqebxruPLEM8RGkZdCun0sYds8tjDHKtYX6C1a)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
