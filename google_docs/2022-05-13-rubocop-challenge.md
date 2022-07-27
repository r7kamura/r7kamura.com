---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/dgiasE4WFKZLfsPA-WsAkzxQKsl-nDM9AFI4yyqiEuFG3kJrnMHL7_Ybfcl5i1AbhKKpiIReMk0Ut5kUUdXpaowy9BON22OLzJ9Dq_fCjT5e1_B3vhaJxSP6m4bn7jjdcq71bH-VFtjB2np2IY7RZg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/1BYDv_1_nWY6IuyvJOZpFt1hB9STA8GqPcK0zlhmd_7qhAPGLqiMK2hzLqNtKVejby7cBJrVEegKIoK2ZWkM7RqWcHAtBOptT5tMMGv2xOkmtN4Vm6zKbt1Zac-fWYcBQhew2Qp9dFvriUiL01NZGw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/FLR_St1Ia93hBw3V2dzc27C0G7UR_iauxsGA7dJ8zkiG1n9IkDVDLpjmE0paUH4-ENqzm95Md3I4W7V59X4HnxNDtQb9_aXaeAQjtiqADovuR_i_a47SfDO_rWfglhnOKUUxB3A3fQfLVJ6oL-eZTA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
