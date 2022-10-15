---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/K7ltDzzy2llIJ2Jiu-y22ctijn4qpPq5qCno5HUljc0tYUN1ZIvA0kyuxiVMVRKPIT870FBKpZrIv1XFJwdlyfirTwbCjsRqNQFwIlNwPF_mEPJ0TldspMFhBKW2YuSJh7XPiDeexNckkefloXG2ZNJ5frXnveQzSYY9ix_Tkm8rPpgcCiEA0YQK)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/g2VkAR7fd2dLFE-ijarMbTs8T04yEC-aOnA2zi5IfL1XEtH9ON7hInX3id5A4hAieTKuM0e01bVKg1qpoVWNNGWpNoj3j-HuefDFt-bgmGMhPVtqOk9F-e7noMQKY63PLMvjzGo6DkTt8yb6R9AqjU8fMJVxP3AGUqvkeRkO0QnGT5lOpRzF1iKo)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
