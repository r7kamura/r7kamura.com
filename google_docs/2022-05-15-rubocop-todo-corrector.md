---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/jgDBE4B3magjvfYnEVH08t7SOZGdWNiSMngBm-EF4jL8HinuITT_UxT_bLWatHkv6E1NcrsDYHZrNa7wo4TXfHmuOvoiUsVV883lquZbrAaM8X8pmjXJjy4C83B4uvc8PR2ggMM4hbRH3xpK4w)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/Yw5PF6bqLY5Y-Ja9rfPVolbthUOelr9GivnKnln8VqXLocdnUuqyqe7uJ8-C3eVU1-CF2NAnNq3EbldFsnVN8z2Ugf7q8m-7oScWe3s0lisaFc8acXlYxjM3UnP0r77BBM2R7J3-C64Re2GzJw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
