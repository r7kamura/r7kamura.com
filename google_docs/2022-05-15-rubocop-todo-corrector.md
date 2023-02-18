---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/PogSZMRkT62lGfrP51UU3ncmLF1HwRi1VQrfRysIBe7DCXKYmSVrtaoOB__-Q4Q6OLHWQBsqH9tVxf_a2ndp3Ddj55hQkt5S-r66bNduYpiqzzkKuQKbEN9Aep948t6m94mBU6DP_L13UEdTsyyNDw)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/UPxxC_RjryQ71Wum1p_45sSe1m2XEHHBbbFKovjFAqyhsbubwe5RwnPSN0q9iOwCi6gyqCPSMe2sCNVMVxbCJd7sBAfHDZyY0CW1xifQWgpkUSxF8NhfSvZ-VVEluQX_27AQ0IxSz1krcmuGZ50Cmw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
