---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/3Gg7Fzd21VK1IC41l4c4K8A2JOx1Wz_D06_fQken57-YComTRmwY3AUE0QNGq584FJb-qrtK5mC2l0vapXGVP6pE0H3ZM1p0sXfhBMlLBTx7RNVMpPw9CC3RgQ8yapGtxBVHrwL8RlI5lRL3ocPLMQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/h6oU-q6N6_YmvZC8CxWfUFM1xB-7agZcEbk-52Tq-c_WUVoHLlsQCXmd6T89-z6EjhGSm85lywyG2k78OAUvHASM4ooKaDGUwWSnXQXkCXhEElAxSOSmVbV6X9EuAFx6x8z9SG8E7vktp9TRf-BH1g)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
