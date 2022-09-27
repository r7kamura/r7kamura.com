---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/u_TB30VLbF0iZiHlmEyHjfU4r44u1bzIpg88srQzze6257C4XuzSqkBkm5wBCpfAIj6HarfsAi-JDX6asfvUa2V9j2VQTPRP14Fe5DA-ycEVEE_7vaFjQFK5yTuYlbnDTI3woc6TFMQ-KCnoPghzhYh0d0co2_3i0ImR79TyMAbezSJpbeoQy4hQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/hZZd9X8D6N62BT4sGcA5uj8udbBTxIo5WqP6632GniHRMBUtqp5-zcC0O3Mqi61u3AjFdxpOy1WY0uFn8vGUr8h_U_OFXYesLK-nClc93JXeAQMJsnjxmhRV2FPoh-jjUOuriUoeWBJW-9xLvarNcU9wKwQpiQdQmNCMVdIKxfq-85dWQBA2RNLM)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
