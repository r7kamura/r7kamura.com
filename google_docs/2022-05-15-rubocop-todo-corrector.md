---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/Bi5kp3laqsNJMF93ZREOGbjvmeG_k7d0lHNHmI4oMMcgYCKFz-WqCMEir9x2_UvfElbVXp6bEHzdMyimAi8ENFLTRGwzbcMqn7Vm7mxOb61aApXiVJRz71tk0ElZYekyENKdK4AMToKzkGt9p99jny8pwBx2u-8crhwf9r_sXsKx5Z_p6lO8-AKnAAH8)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/aG3bblWYXXCzBppVWqC1EOejcS1zkzbmSaKBs6htVw3qPe8OXWPnDX8Qu8b0yWdfAj0cFaGZFPpbaFEinEeVw7szM6Qkou0Vyhmy4IHQ4guNvE48G_Yy6yCXEap843f68-oLCmhmlf-PBloHSg-RL88Au2eYdvmsI96dneYUf92b8Oi4jWHjO15CYIga)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
