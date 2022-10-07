---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/zQFFTSwowY9IuDZPcixRYZ9U3Eb7knVMX-gmINDG3fAx0UhshY__ypD3LTC9z552rIxadgINeTy5QF8QZDt7XFIDMKxmmEIbRw3AL97607w_FPpOJqKeRsAl6O9hGalJ1CpDhGNe_1O953nvQxs3JDMBtlWRuySkxyDBSLG2QW4jXsTeBCeT8V_7)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/5-nfSJNnwzmew_XeG_OSazpqrHTvLTjNgAtHDOUlA4BJA-QNT-O27occPfiYo7Ax8RDNz5UonKmV7gmCnI8FaU0EiF8XKlFElaqtXgCMvQ_swXgNea7dcoACLgMJSAKjc2qe4gZCCe_lUY05P2q58FWszc2zhcYOH0Xc42yjDPyt5W0hIh41t_dR)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
