---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/Xy1fgYTwlQCx6VZd0lZn4T6r_KSly7oy4A_vc3lViHynmHmVRuN6In3nQtyV6D-BFqUA3rJf4bokMcl9zIEpi6f54xGdHtCpv8oJ5vzXcURya8VvB_2QR6ReTPQ4LQcammD24NGEltW7ha8NOg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/KLWLv_04NEooY6zQOU3ZS31vCy5PgyKGu49S9Q0bmnpOaOXb0RMJHBaB9cLX7HQZ5--_pHsweBKjv098QfxbhRLacrYmdpCwjNjnh1v90MUANtJ7NzkLNDFyROJRXskbLAcI_Zy0Fc-Bz08DdA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
