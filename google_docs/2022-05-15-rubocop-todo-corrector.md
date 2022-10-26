---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/ojk7N2NW5JLHYM4fu7Ec90gNrnY7R-k8GMrfluB5WNrOAyPMyzXjKy6qPjERvKHqC6epYCtbdJXs-MgPZFhAuBgqqqZOB7wy4ZLbEMxAo17dC8vtbKE2D4WnglWYI4AyPh4iJA4cL0RTKcXVJg9bp-cf4bh3Uhh1RnVb-ccPtb9yFC9r2WLvL_Xq)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/I8HcMsGH5FBgNs_fw-GZ0LORHvYSwRRr0_bPv1sjZsBn6Rdlmw7xOsfry0Mp45u3ley3bsmUfMqwekZxvz4vxs6NoMnXIdAZ_yhpkImtXxWd7_mdfOv6inmU-gVeU0IBRCManzzdEEYzUR3XIy6F6JT1hQ5Wri9e9_GlMVIRakA_p9sv35ySrTvA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
