---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/pmbM4aiIqfsdLLcdmb3JacaS9yuyciq2iE62RKcK53tqZjEDEmUNb_xydhL6BBllsJV6ST2crEI45AB_8muCJunhE496i9tmbJ-t35EqZkhWXOBB3H2i7BrRagmhX3q5O7YYQbcD7IAhWZJPzr3NG-cYWzKEr3W2mQ7v4EBB3CpBnERY9xxy_nAGr5hy)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/yJSgRR6y133CU74P7ZsYHOkK_9zbnA7hUFMDilfFdgB-xv-TFB-87EaQidjaJyPFtYD-WyJiASAq4ZjkAUwPUXYJh1pc13C6lRb-6syq5DVo0TzriYwplvOcHUNqu-X90PKpD0Ig_FY_Ydr_PTjHimyNNjvSUQa-7QZP6wvP_YZ1TnfEgMJn9lrsK5xe)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
