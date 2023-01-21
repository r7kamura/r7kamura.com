---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/b9Sn80x7kav0K0N5nPT5XAwQkPGhkKN7uYYRqHqC8St264iLLNTlF5MJySwapfzU5qwQQ0J7_MumubvOg-thVKUEdh4-GjVAbMUubGkJFcn5q5N1kubcYdLMXZw-W7aBiN2qsEM5148qxzG_VLfjdupKu3FyvOddANTLczdjEFxvxJa5EUimYJar-OJG)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/gVhpYVvXEj8wg4VeyNIlF9sb8vgS1uQssjES6fEXs6tV5N0Int4OBvjUU5mV068Ke04Ka_RHrETf_qIG85kxcUKLyxp219NsXkEIkb-AghNsC3rpaSfq41ReTHzeDSrJ3hP1sLl8SuYJh7biwBtJM0hTR26OVTeMXAi1gNFIEEZuqRX_7luMcY1xmOeb)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
