---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/gRZA8ffHgTAqVyeh8tTSziFmCH291H4bxFFB82GdDVsqKDwAi6s3hO4AIf5eFW_nChQt6Ph0j050YAT9U59BCZvHvgisonQoSU2xhEQajHp9o2THYXS_BS6PTuOsQpArC1DXrR3iul3jG3IPRGxHGHRQPQRDS2bLuD5oAymU06vERwDn3EN86mbtoEUt)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/DRYhxIBv8_xPwmmuW3PWwsG9MbsX8VxTBpWvlA_bNHJny4MT6GHlLFxFyCegDWvUD82hJL287VAFFK-mHheMvsCEvqqOr_Tymc8vylnPlfA68Tj9fcyR_x09oqD6j6OIUw8YexQrSEHs5vVavdlZtAEUIQDDlxfGgay7ujZm-lmB-57saDAKKoHVQ7Au)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
