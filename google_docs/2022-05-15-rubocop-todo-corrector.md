---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/54wB4d7J0rSh2Y4LtiyxbWf9i1h9i3TtlBcx_Fb2s2jDfCCbWERqyRqguVB8y_J_G2rD8EmXCfwLJ86rdFRjGQkyXaozwAy4OY1noaN-KSHcX1ZfFw8wRAY41oPdewBdvdPLOkN0kzQlxXHPDA3zEFy7-LUv45hm8ALFzkmXP_7_IpopFkCem89o3Z_M)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/xynuYNc0pDNARadC82Lvi4Rcrar_SICZrrjSPxz8seAdTkHqH5eS9hdgpSNLGm3trPMRT-9QqV1R4OgHtbNNmTAg2o2PVhMe7U39_vmC-3BigBwvlngru4T20zpNQFGmFhi6qt-kF4n8tC5Vw-FW4k9Cz9awQw2vGCFuWjNYe7SLkfJ9RO-w0yfV0g-l)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
