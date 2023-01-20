---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/TO-jB1dVX7AMCmCXmziGAh-Oqxs5wDH8UcHTePLkvGsFvI-rG8hKPiDr3Gk4dy12IflIgpg84vDWbgdEj543h96qQ9a4PbXArLSrSJb6JE0JdW5Os6ATdMuy0q4_3QMYaSuwzrPTmMr-1gzwJoCGulcIo0xOhyi3-oeilxEqytnuO6NFDiepvcoIcMVz)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/Ch6BClcoVDo33s2zPOX0G040hnTc84lZ6Y5OorJOTLmm1r3ONrTF9K43ySnFVI-EBcvwIY0vSOpyhb3FCR8y-aoIig5rn9iVeVDnd2YdAOjx731d5-9gPSkY_xWlZpP6rwI78xYv8YU8jJtSt-y6bds9daX7QrJgPQRfgTaGb3T-dY-0NpgX0UYIH7Yu)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
