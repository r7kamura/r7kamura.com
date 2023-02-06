---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/pODy2FlOYXcO-XUWnJTEj89ftiXtf3IMs6AInIhU2ruZUnzwbfoIHNxh24jXjSIXvJA4D2VEGLxL90fGWUsDE_K7yQd0ofLrqPybqxqLAV5G7N_W9GGMR4VBYwmOpLeY1Y1t5D5bveth_XbhVba7Cg)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/g5_9hia7ldrVIl4rzQRlYPSHZ-zG6YBSWiUaRc0hru6681GUzJDEHxXGaSHW4R5-cK47rS_D44G03Ao-fPvam8fLUrE2hAopALZ1px_lMFzXa_XinXQSgx6t9CfTc9c74Yy2IysY5--K2oQNNWMsVw)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
