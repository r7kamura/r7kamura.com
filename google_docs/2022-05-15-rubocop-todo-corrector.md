---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh3.googleusercontent.com/9jjnCdUF9Le9EoqStRuCWze9N5oHGIVw1N3hKX4p58C8RMNZEWQL7Ddvh2SKzii80GNrYnZFvWI0Xc3AWwbmuMkC5If3E5NLViLTm5kyZSeOX7vKIsaVGuKNF5lIQT-VRBKcetVC2LC9QweD4A)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh4.googleusercontent.com/InFhabbsTcTD_KdgdiPiD3GGjFbhkQqc2fptdh201O1co94NzPw04tuY2gxhphczjxRY08rVLTVMQN494oD6CO06z9_gOt0P3phwKbZwQWPzNtHzFPvocSmwlrBoZUcrctLEY4NYrRtaW7yYaQ)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
