---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/bEa23m90SorVT07jeGL2DykhaQY288-10n7Oac9T5t5Y1QlwVbf4DyXTGB__BqusuP8yBUICEx7Pkb-28f8nq_0D5qM-cD0FG7wa54rbesOXkkwfnznI-9cq7BOOow9wUsIAZaBWNMGJD6ZPTXherne4yLrU5wnSQk25qsQVcjyiYVgHLOqz0RNGKUwZ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/d-8Rh_oIvo_8A0CAFIV4p-iAi6iRTDe4Jpjgoko4a757Jb5i3ew-prxR4FYSwLpVi5zFGVTV_CvQOU0HHytimqsvJaEtybfJ67LfaoKCQlChnQ6Pj1TY7SlrMTlx217PstC5TRNaCx653ez5fS-l9bu2JZEH87Ih7Dxa8vZjuTtwmybfaUohoPVG-a90)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
