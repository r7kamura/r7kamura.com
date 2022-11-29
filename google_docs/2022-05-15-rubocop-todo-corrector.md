---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/eYfVh_j7Te0M44pcb9yPs7ahHiKH6dhoX4gUpGeW0r2xDh2zXkp_AMzr9FLyIqyw8BTXaVK-wDe_Mtqvh_BoQZe8dTcah-15Un2SJLQwN-7P3eSmCLjPBvlfQcYLR2WkDXYki_H6geh-witrTmbwglc_6hnvVeRAqQ1Vyf0ssLsBHLcGioS4xBm8ed9K)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/8NTM57DSkMV9rBtkESwGpCdar9mrt35xvkq1FyZ7_JGNrRlH1fgiUqjESqNQSMaLr4U1V6iuLN_p81rei_VGUuHq4yssuoSQoQLI9w8FgAQ_jOPypfRWDlSbHBwOpZb8ty9wPt7blPbrTGxWgdZizQYAbG8X8l9d9Eim1HTK9LFXARZGSh2U7HNpLCQ5)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
