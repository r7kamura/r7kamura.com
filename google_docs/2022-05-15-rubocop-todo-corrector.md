---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/LtU1gCDPrQ9d7Z6Hl5hsOBxeVc6QsF06VOEAO7h782Va37tYRIIBs_z9YjyzciEsh0-m5KQzGlVjbzxCesWRKuKwy26KQXDL89Yaia_Sprvc5r8xUqI5Jxes-yuWzYHbkwcZJ9wDrLEIUAzsmsdWgYc4j4vOVKXwUXn4a_aDHtid3nCSdtJm7xtin5GS)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/18UH1YiXDkggJWhUxz7-edmWlsln6xyqgBxY9nDisQksmYCUFQAeLOie26pEcKkcJZ1i27uTElvujgP8OD0R1RV_hRWN7H8SwmCzdbDpwA9OZUZHg2L2zKMeB4KzhPTfXxu5pmItSjCCM7ljTqQadIrz7fjkzegOk-Qz4JDhz4kV7wmLpSHZ7JR2WULO)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
