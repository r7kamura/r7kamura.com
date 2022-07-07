---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/q7yB6ELGsV13s7cVaQCrq_I6Rpwy32vs6-Jas0j8AuArnTwvD_DeJa6ZD7clvJucjV_ujO1v60R4evZGjGlWzcxRodP_poPT3A-VCJHlK9REMeJpSAukBfB4XLCzHhbX76Bwagzp7dK_NdZ_Zw)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/ugKafNl8PX43BHVfcZiezD6nJtuzsyYoJgYVCVLfxpMAOqKJOyyVVhp7LjbDO9RnkECphjt5TLaK_4VHHteKE852t_Os2Gt2Fv7QknUaZ84mE6rnfRfc-AllY28ifsruCI47sO5v1LlDl_qLFA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
