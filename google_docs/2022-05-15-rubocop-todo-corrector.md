---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/gR5L4jMAQWwpOnr8EVPTsjeyFYQxz4oyoQxEyDTFtd-Kc_9jw8mfiLassF6hvflQV2WXxt0NSH5VhBM479ALcJhlga0Pe2o_k45pv4OFl_dhQ0cvUKTw1BTjpiweBHCT0MP_HWxn9b32O41RHuoMeH3dpRcWfuKhL2bQAu7SsCWnuJlhNsBYgqW1)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/nOm5pX_D8tePpVjzJEjI7J8m8m1zjL_9xG98GzJDMERIs70HZpzl9YKQFh6Q2BHomFX16HMF0J6MAB5Ug3ltNAQKGel-SakudONjxoFenNN6J4QxhpdL1Jvi6W40iNRGZzZfvvpOL4MPrPN_FL9_sW3yVAAsBqbI6LRob4PsW0YE4NiVS8wB0PYT)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
