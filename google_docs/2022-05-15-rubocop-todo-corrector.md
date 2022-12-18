---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/sk-g4xrJhniD2GiMgX3RnllmYP3bVgWmTiEdj_crnt2WnCC8-9NF_-MXx9Z92Nm5Krs5pVW8NK48hHMqf5GCWCZX_knUZmdhQ5UBA8Q_pGkvdCXMy7T_4VhOJrmmAFDYMDwToZ_wz63wJMwBcqds4zCU2BTwZh9bgTAWLzk7GPRNJRNfd-pDvwnb_Lyp)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/vljxiOBQKPPMenTL3PozUgmhwu0YvsMxdrdKHUMzxt96pydJZZtcWbhZt-uL3iAYCMcKj6yTOGCr30UgvYpvqD5SO0d51tcZ7KaTrfG5Hvu2hrMMEBeFz__fWpeHK50apRLo5vze4A6l_nysPE8_Y2nz0o7A3drW7KlKvuZ2u8FIRLIhYeAIZ56qVQfg)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
