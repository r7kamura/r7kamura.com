---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (後編)
---
[前編](https://r7kamura.com/articles/2022-05-13-rubocop-challenge)の続き。

前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionをつくった。ごく単純なリポジトリでは問題無く動作する。しかし大きなリポジトリに導入してみると、使っているRuboCopのプラグインに起因する依存関係の問題でまともに動かないことが分かった。そこで、自分のユースケースに合うものを一から実装した。

[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionが出来上がった。これは依存関係で問題が起きづらい。使われているRuboCopのプラグインを解析し、適切なバージョンのGem群をインストールして使う。

実装は簡素なものになった。[Rubyに関する処理だけを担当するコマンドラインツール](https://github.com/r7kamura/rubocop_todo_corrector)を用意し、Gitに関する処理はGitのコマンドで、GitHubに関する処理はGitHub CLIのコマンドで行っている。

![](https://lh4.googleusercontent.com/p6ENhogyJwwZQd83fSGmSfS3R1PLCktdVJS63CWGV9om-MXqZtdDzWJAFPquoS9EOFDO-ASVenaBS7_6x3CMyoMltVcjetuJN2kWix9rRHwUnt9hmInq2hk-ePT7F-ghe2BJS-kjXFv4ImXjiJFaNJBzaojkNIkz_S1he8C13RKDvaYp-QJuxw9Gcfhv)

前編と同じく、実際に動かしている画面を掲載する。READMEに書かれている通りにYAMLファイルを置くと、上のようなボタンが表示されるようになる。

![](https://lh6.googleusercontent.com/FIB-bf85dG6WhkAlD8dapFpKIhKIINijFWrSA1PSiT00_rlcP0DVVuFOn1m-MqFzJs8CM1Pec4IHHhejPVzH0pTXAiFS4p1WeE84UXEme0BX3bBYPclKeKotAAyDW2n4m6GTyEyj51EdA39e15O1C2XQMuwrbXOhIDmM_IHwsvccdyDgzWtXVNFDcaV_)

ボタンを押すと、1分ほどで上のPull Requestが作成される。
