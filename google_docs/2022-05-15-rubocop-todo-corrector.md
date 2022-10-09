---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh6.googleusercontent.com/QUw5DCLGGvIdozVPs4T_DH1gbGvGiRwk2WUqTnrZkNNXbbqUZqa-cZ-lDcOHojXL6uuFvNE-W0AeUtGL6WJcXEdFUGN0c35H3YUqK4xvCf5YBwqM9rJCMMpFAePFKMLngPRPo2bhhgu-7HLdGPm5bOucVa33mOrMhIRHNkBQj5wyrN3Y2jX1P3uq)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh3.googleusercontent.com/f91GOwXw4t0mdHNfXmGjOwxr60Ec6ojKM9Ht5c2DAWsK8y1gfu5n4vSkm_fbgD5KNY4OAWwLRnMzF4_0cC2_YHCu4qr4-efC7wId9bfY885Z8r84HKtIu97biAuujP9V_TZjzTANIQBBvPJ4A6rca6wIXyBz0gANlx481fmOEuofJ_cnyTWM8YEf)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
