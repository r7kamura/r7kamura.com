---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/7-J8D8fBYycfvD5GNere12at4wNXHVWGVkNcXN80-EE-cQMrSOQO8jqWeZ5LNZhEaF6ZAeknmxIKNjRDi7SQgwN1ItDAklf35P3e_PMz7wsJVP5Jo4gvBIAYgZZc7bmwQHf55vSdurjiLrTJOYaRcy8Fa0j-Pv12sLLhd9358j543VYofwW7ceZX)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/Mbxs0QNKGiwA4JG_p98dycRzo_hnhpcN_Bv74D1co_Nd5U4vQc04-Qd7p9UKRsGLwDX2Sfrp5UQ9bdnI3r-kTQztxIkrK2KiwqdDUuNv59TR2N9jj3gbJguUqbgFs8lIZ7x3-OGvCLmgB1PzlMAdyIq2yRq-Edx8S_eRZ4MqF73EKg9Hci36h2ao)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
