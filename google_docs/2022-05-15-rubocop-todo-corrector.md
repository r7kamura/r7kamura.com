---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/mnL7xk8Q-05b01ZDTy9SMBIJvQyWkKPchR7QmOHiX74FuHlj8HasdZ7AA4duru1xMYTqM7HPZoB_7f6mqQ3AjCe2dVzFaKV1hY2F6WBfjWg0TjA8IZXNtdx6G0JA9rlAt6VL19NGoS0bNI-DfnX1SAsOenblUzJFJ2naj5ae92mVdfiJn30zqu9ZiZG-)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/BnDvHd5GhiYjYAJD8mjqd09qAowlRx8E-B2qbkRimIr_T4KxDVFh3kqdLs4d3Tqp7WivqWTq6tvMJCtdqsFOdWa4k3GMntJv5zq9Iu2A02QMTTRJfLa1L5li_oMFN1K1_rz67koS-KmpcMjZeu5mL7wbkObIkMBFfZsnirZbW_mtC0VOuPGjJBQecLN2)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
