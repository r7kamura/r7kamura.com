---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/abQ3W9U0HSTXp1BKqLllaEhKJnbK4zi_nntTyQbMw00w5iGMv4blstMMZRjSvsk3oEqtQhQqXYVtfbj8FzTz6U2fMLItwtaTAc1PqLLjNL4Zn5FZP3xKJ8D5RT4rZ_nRXkpB-RMzjVo_3yZbVzKiHPmCUuOPz025w5ujfNO1X5vpN74pxpm8F2ub)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/JSoTN0lVQDhNjBU5r-EINfszUIhr92eg1Ifjs-MaORHeys-Ivw4rf5-ccG8egtsygO49PmLjgeArN9jplg1YSO2vxAoKblftwf5h2kLRKu5cCYJWRUrwoG3KASSCZ6nNxoYZxXpXkd32r-HR5MiaYd1XgVaxr4j8McvuspQTdEZuTHDCqbU3LrUP)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
