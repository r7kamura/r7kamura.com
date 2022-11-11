---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/Xe1itx83ECiCvo5LvGficWBqBynV3pvZEyyGEi2cRZye5fHstXWaqjkZX1Rop5KuzgT8gL7ofsrc0rwo_beS5XK6z3UVWugTbTATpyWySyjNMrpkfJqV6CkRsM0EIzlSJbu-OTedKaM-EvkhCX-tItK9a1KBW89LSEPGIVS11t5vFV8-OOLlmWofwzFl)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/tNOkX2cQukQGvu8rNSIXo69T4yYtcHO8znJyYsFjVTfR78ItHDlWqjxCwWmo-HOkUtc2nPsO0RezZP72mTBBMUMoGPt96fwAJgte-pT2HoV7TLRcZyTA9YyaV2JLJG5wlXguJPf4ajFMYXHO5yXhXN9vd95Ny6SODnxEaT0zjvEOLrRh9lGFD0mp1UQm)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
