---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/tZZrtuqKmz8QMlACuUbuBcmGzFSOAixW4HK-CxpjsF2cIvGHypF-Go8tON4PQ9J9q8bYwRQA8_7w6ywuSxla5ICdrR861ogBQ2ViwOsPsWdp7AhqunHpZihGnB3QF5UZLS4-F1rY_BnC2MImUzsmgw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/cpP11p28XcUx3hh_Ojd89imIp2e2ZAEFYlezrsILRGQ0KbDmUeXJMe7nooYMzycyGZiZjZNrwIv_TcSbjiyhifo4PVunvCTLypx-UF_lYTgBdkbp_MqywMsoBABV4GLcVr_5Mxao3YVchSGvLfhocg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/jJdzBdrXkftceKjHPJGgpgJQqfV2SqvL_Q1I7Swa6dL1cL51G9GTq3t_1iXWiNBUjK5JyOCNA9bggbD8MXgmuL578fuG2p3kNUUUDevMwEOClIWLq6B6unKM0XScvf1tRbMmmkDD_JzddY1QLdotYg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
