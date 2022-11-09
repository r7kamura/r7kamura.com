---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/BWHAQnaUMlhct99Bt1FIUl-Pk6a5ne8jW45auJ2dTTXNF5_iR43kq5YbTEJF2y9Cti-1iT4Od_RwFFx_Tqr9AU1gxvg-Ko1LL8LlzV3H1K0SGEOKSHF8ZfhWsnG96ODF8xqKEjhahyRMbATnZDAICZW5fv8LXDM6vyk6cFNNnfMz6lP9i3Ala-_v4Eez)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh5.googleusercontent.com/HwTZhfM44YdN_A6SMyAT-jlG4cxJN_uEZle96FtQTqVo54HxANTSuEDiTSU3m5pbzyLYsUroUt2PffNnsobIRbf6Tf3ggpmOmT4WwjtKaZvhpADidhRpkuyCBMQ2L_UqTxs3M9dax0wAGgY2dFmj0VPZTkQQ5znS-DyImeYaSrVEffw5uqJy3pKr0mtF)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
