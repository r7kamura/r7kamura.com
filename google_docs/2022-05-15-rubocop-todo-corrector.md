---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/FNHfyWh58Szlz3v-ULoEp7BVSndnrpx1QWTqUwowf9uXE8ms22i06r8pfW-XW1-h_thFwbBbbZSipFx4mj627gGrmYrzhUxef4ftPeHoczSAfzqcIkxXjJBxAySOS470mFctKwTGxlKUvEGPnWifCQZ-X_NDHriwx5F-gTBjRFktTCFJpBepoqgPojVK)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/ZVLIY2eG-TmcAVy-0GzRm5RDkcAOXJG0dhCdhWFO8Gm_u0nwFzLSRtLs8GReZj2WqpHNEaubC57m-PNT26ZZ4yqMmWXhCF_u4GIsPAQmeGCV3BvPgtQbjUmqtcaUo6NeTrf8oSJUUB8hq4l5WQhdmpT8vAtxAJ4S-UPCmzyOjJ080tbvSrfrn38ilmib)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
