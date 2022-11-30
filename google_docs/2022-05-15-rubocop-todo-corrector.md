---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/e05hlDC95ChnXkGWGX4BQzj2qJFfIYQNLw4JQXSTQZeOs9tcxhOCJ2WHUlsbTsn-YAp8_003R-UjkgZu74gu9pfhNhxx39rpf5oZcbz9o6mGLrfU1Z-rTy-vhD5PWEimCVr0OYVwbRvMk2u0Y8oBG1qEmDw2o3wVX21_MQxMSBwa1TdHx19rtsNEH52j)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/0nejzqR7RO6y3NSCBD4W67QRPGqodhkPrpgayv-tAqJTL1MkMjPTazyhH6o42MGUMtCuy15Vd48sxD3G2_nurs9NZitl0h0UURhCZ2Go8UU2kAyZIm6O_cZIJstUYEuHS9eR8dHTrrTCJCPp8lKPkoJvzAyAzvWwbIU1G_tGazQ_g_hmfwExSu-EhFP6)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
