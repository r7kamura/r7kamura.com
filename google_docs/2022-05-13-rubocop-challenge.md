---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/QOUFzoRRAp4DUH4EL2h4Sup5Okaz8MNsW6Cfke4TNdJhcXNmJpKw4ZaFOPHCW4vau1tUgbmFfgZKbMiS8DoE5iDT1FmXa2ILXmSnAgWoApsfgeUNusboLZYAFj13Ip3Q1ytEqgFHO8d3EkDfOA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/_JMB3WELcZFydv5m-kuSHVi-w6Nzqeg2cXqJp2n27i1CG3so70WUpgtKAWUg5-f6nHDJ_Folhm4hrKRCeQtmfqwzgrztnexf8TuB2zlkvwnpPI2amRkTHNe8Q64JSf34lqgwNKaNbxkMJ18XVw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/YDLS7-q0Ty89zOKWacjecQ--URPzjxWY1KigyWGKFnlHY5ly3aeT8aJJ6EIs7RtAD6vbSDMfP5BZrrroz-y0wUGJaatFIptCBg9Da8HQPTx1J9J5qZbn4w76qMbsGtkuqwKEFMMzRDvrB7TVig)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
