---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/Uu6nZSR_3SX68LB90yhZlY0iZGp2qmZSsq4Bh2nHAVwoFIViQf0g4PduUDgXKNT4s03zFK3VbT3BDgwe57cuPjx_ke0E5qfO7A1WdBZOrZyP4N_Im34oOpeLK0AROOAEhUGKTT7SFWDtJ3BFj2Ex3w)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/Cca4zdse5rEKjGged-skW5rpRsFBYk22gCClH7I0TLFmATkrPrKu6OqhcU3pJDD6FR17gLKQBpAkhwErs_R2PrRQu9p03pqpi3uHuDZ3WxBkyCWytqilmvSVc2Dp68Cs_kgtD0YUGod4iZl8vs4BPA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
