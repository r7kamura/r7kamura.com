---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/WvCMAj-kuYBgzOG_ySJHlp34CfyL__WVUH1ytS5X6WpK36KEs-cV-6IvOf6Umtx5X7EgKSN9LJU1YC2f7oyGs28rq7u3al_Be_znm9OtBONT_4uBtN3ITxWI6Uu1zpDK2Z2QCZ19HUfoK7KpHKJap18sqWvO5ENhBd8-J-ZTt9Ywi4vLMo5S0KhFiY7X)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/CdOH_iyv6IZnNddoUqdxFutkdC_KcHlz2IgJTk5Ec92wFRCIGm9h4FRxnurceU1KaDk0PbCy7T0KHNd86cBJKcDTgHCMb0G8EzmYPpomhWBEJ1rilXAhiXXv8Hs8oFFnTccx9jScyswUc8UAPrK8SGhjZ2sD54gAfbloZYkoE6KiNuYMIi9FsdcAPEOz)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
