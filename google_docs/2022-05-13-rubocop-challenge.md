---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/E3zjxWGd2b4ThR8jTKJVPN6t3PBj_9c2tR6aeJ6aJkv7BMNUipuwsy5POjLYZNReFpz-b1bWIgkuJ1ZdZMuim4Acw6G4hqldD9nSb3gxdqjaC1esShVU7QvxvuOZWS4qs-O9e52Ea3OTpYNK9g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/ULk7Rdi_kTqaABvacFbK2WrtwAr1GQmUk10VF86yOe-0rXn8vQ98nmDcpU9pcsmQBuCkWC-nVJSP6pvDm-8si2r6Lk8AXbxOTp9nuOPLRRCMuW8VQA-GLvL_0tKZNhIUsybVJXVS4ZZMJxOhsw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/EmQtUbiK4pbFN_Z_8bF1XCYSXLUc_zj2gmLEowhSpTC9ViQBwtc0qendbCoXELAnXIJdq1E-L1ctrr26fXpnSmBtTTZ2mFtRRmmOoOoTLY6-QErCdhHvuGAK8UmCWLSPP7KaTRDCZykijC8O2A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
