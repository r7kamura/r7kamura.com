---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/J6QIVHh1g0rjfHdw_K1j7V6XYfJ4Y__j-k5OptZelT_EbUtzBrlq_iC8t9TW9LTiC36DAN4qwbN8UMoqb-MrbACuUUDTrXSoWjLJDLSmqNrOGSqwBjPjWYReEPhH_ueZWzAJ_8iwsxqRH0_jFz3Ho-fp5G79t5JhRGCT18UBSF2KlYgS_OVZxw3u)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/VfKxB0IMDKSP7x-TELkXc7zocS27DU46blBcobjFSOnz5Kskx95Mcpw2Sq41iIlQpRwTtr10zUeqjiywpHoO5eDhqx2uRXGI1yUYFk5Ll5LXX_o5H9pYK_tuPcocXfRNy69CpVVizosS8pfCCuxuLPpz59GY1xeLftVL-Fw-vPYO9irrZHFzLQXn)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
