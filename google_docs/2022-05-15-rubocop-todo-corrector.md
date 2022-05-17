---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/yyrudeGC3dTjFcPzT2JEXpW26sCjm_4RJzePUw3IoZUzDHyNSU4OBAYZFi5MCAkZ8uGxY0aVwpA9z5qKalibFOmXDmOblm9V7ImvRotxq-Agx10RX8bM-LdrCJs3OgHUFmuyQIoULKsSEQe04g)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/lYZF_PWTdHyauq6kiMNcUUyb6VxK-gSGW3fcwi4D1vD6aXor3_TuZ1gFvxVmf9Yi4RfEPfqa216K05TBneP1Rs08GL3_R5l-WUQzOIqCVkLmr8QHQORavX3V2IFzZpPXI7NW_GeVi-L1PFzirQ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
