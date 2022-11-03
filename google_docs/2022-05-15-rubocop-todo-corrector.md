---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/FLTOiiNku_KZPOvuc1LlctBbvWeOV80Kb9PUZFDRNJkmX0oRrgnY-hFvGGRcuSflpuvnEoAw04v_Avg0Ub76HdxKFndNu-Zy4rvT75gAMU0vW77cqBWj2NPhFmorR8H3ANWxt9sLpnpVivew-qw6bD7bFaaZapp9ii3HXz1QQ4_wU15PoA7ikccX-px7)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/m69j1iTSj8G9CV3CfX65WkpM73UgrxvEgltzGYU8XI-n0kp8XC39_nHq2QXjyGlz5mvKkOQbGOqee7HYh6gdMI1zImxN5WsQ0hTJIXrhKR0vQa2D6DM1Z7oN73Syim7Iaq26QRT8PiAf7g_dhNbaNrMkRgRh0hiJkOg7a60QC5PxlOhneo3V15Dj8ZoS)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
