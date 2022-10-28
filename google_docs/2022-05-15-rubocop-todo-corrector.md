---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/0aMXw0jf4OmimHLAxL9H4bki4vyU5pQozKq-bZBAVTCHC_Iw9nbEnYbtpCKtk4oZ7JrQtfjhcxxYAElizolXQjO7iF7CpCBOUpSpOKefgPYnwlNjJekCJJ1F1TEydcVNGX-X7-sD77yUikDHTVJGPABZvfYmOxiO0YO-iVFnd2CbYEty6nRcIsYW)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/qonOZoo2LjvV5zjxvWK3x2ZKZ53iYl9hia97tYxxpRMg0gPBVxM9zJcqCrJkfMg6Hq4Ral_Ykc_q06fm7qermE9HOi9oRMXxMLkSvHR3eZsuVoE6IImLMfG59Hz6ZREUgFhllpuRCZx6C7huvxpETgaZzG1vbJu_k1fPslo7uB9F3T6FI8jmYbmA)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
