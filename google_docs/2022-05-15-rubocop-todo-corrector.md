---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/emzCXAf1VWPdYNQaLFHegwETbTPgnosRpeRXlulGRCbNv7FKIsajCovLcV2nyWcY3SEpvufUt_TbE1JrlT1AkHgOTmrhHCZUc38UVp5gfGBJYPPSQvKIOUF1c_9kKPU6uL45e-rSd-r97NbzsH4_ScPnzSZ7SxRJEOkra4tM55UvyY6cE8HCZeKX)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/u9dXYZvjr707xpGi0saEBVbMg7b5vxSVmALP13f93joviWU7aYPcaiRHljBMr1jWiDYibK_k_J8xbu3Z7CQDi9UkDdhg95GRbq_qdc3ru2u2VeG0iFJQlOfuyrmsoiVwhI_rNSb5HFz8blFb_8HYmeOBAWdj-mAe0E7ux5ydQ0tFc36UsjM-DZYv)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
