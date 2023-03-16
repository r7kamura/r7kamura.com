---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/TFxTm2BvWD9K1BRdiVQfbNnnSX8wPFon5cx1mSaHSM_Yiqx9NtjJyWM00COLr8Ay5-Y6TxCW60s4Ecpk9fmtvMpgWInzYlq4gO8Q_oMsPA36vPRAjll3AHa3Ygiv9dmnJ_Vspv8jRrf0dQKAPb2OyQ)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/to5azn7Z1029KSnaWn-xX1f1Gy7uJBI8kCG8-NoLmepYg8bAg9xZd3aEybVmvWzCbxrrbhp05bcdFmeXbBuV7e2qs8UOsKjoIsQ52H4HtTzFSkdXgyvXN_i_Yteyw_O471skNllx0OVTEYgHBoQbCw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
