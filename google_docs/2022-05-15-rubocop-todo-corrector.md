---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/hSH1FO4vmAWnnEmbZMK_CBF5nHvVQCqaQ51Fat1oBbgOAGwEIJBPpHm1YLJXNNP4pUB0n7aVK_AX9bUpPTxbjxIg4bBRTR9otrKSxGJzk1l0hqVi4lYz9O5CbErZR_HJntHdBcYwbunTRv4_IzMdZzs_UXmeCJ4JI1_C-JHX83oWd6Cw8WRcBAA4FZ-P)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/SrMzrC3LjMqfOdZ0CDw7buzD3aReBOe-eV0tD4pJgN9YX00sRBWZghZUENlqevAlmUhuzwjF6z8dnKjhDas8HGcOitDzNUcfJInDGOpii5MAwuW_fQPB3cTqCZwZE0f_o2YYQG9zwp3oKXGnNc-HSqlT1EH-F3FKRtNIblBHvfXuzozKj3ht25PZ55jD)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
