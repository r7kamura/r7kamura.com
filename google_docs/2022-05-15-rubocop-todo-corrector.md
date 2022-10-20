---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh5.googleusercontent.com/hc_Fqn45uzyt-kCi0DaTb_B8khOdveT9oJ1lCMVOCSJK-6GH3zQ7njevZhVtJ6CpmVGbMMuw_x_R8IIyv7w3Owjv5Qyvk_arIW1Si3JvKaTRNku7TBLJ0QTtV3rsMJUFVkespdOQ9E5KVtQ5d0Myy26M6muCrWL9iDQJAnCN_mhIXAC3Blnj0gk4)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/YvjyZQMk2vzWxuTYgdNjoUrpJWsmdln4x7d8zueCsTkt5EQs0CfWWSE0ft0BNBsANdzC_jXg0gS7bKtMFSVA6XJY-oIb-cN5g3i6-KpggrxH96b50f63VFfgdH2juQ36FSdzmJ39Pc5kogtDpIkItR8t2qkGs1NZeD83a7c-fwqNiFsKyko-_GcS)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
