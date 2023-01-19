---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/ZogcH0dYW7FdO8SZnp1tNtv0kzIuEfUoLCKzJgVdmTzHBHpJpx7d3iAKuEW9biHmjEHD_lPmUnrLuQRGDwZDpzaG08JqaOJZ6tfD9HKjHjaHqVuVc7PKojOIM_YKT_ddTXVwukYjcos57SZRjhKt0dBY2lF7CamURQ2vVrBdhG2vvizBTiUrgTR9LSAg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/PDoPFuXkNymnBQo4LCZkslX5IOxzwZnXFitNWv8JS-SByZ28qHrVaOHmzdrrDB8XgFf4BWZlloR5hpyhTXm3k35QFF8AT0qRho-RUHLMGc9jLrehmny_H2-xBrgicKbPm040rNx2S511PGHHnhy5L8Cred5lpbBeuHzE0_kxeOZ7-U1W1Hz4QSd0eb_z)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
