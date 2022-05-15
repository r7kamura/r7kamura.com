---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/S8ew4dNkg3P3qU8h1NmWT9XpfENZJHbxwBY_EAZMH8xJOBLBqPHMouuzR3q1xbZWLXXL3R6p-xDCkbnKEVbUQ_FPpa8L2XLNzOEIcWZVs7Pj7BkRbYXClCZ95TgagEEmz2U4fIuhc_FOiioI3A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/aMMr6g-Da9tJpU5oaw353t7lAGaUmYxomdwbQWqJFAUxYxHGFDHBEuS-0ZPDgdVGFaB_J47NYTlvL_jc3EgsZua6qjf6Q-4QUWS4ZqjzDd4FBfOkyiq4h_BB6EEFhbBmVuaWjfvaWIMht6pAMA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/gX89MX4tdahIJ2CWUC-giYk28ARNa7h6bWkkiy1S2100e97FMgL02cSGd4pAibP7FpGGfVOULZVNua_5rEsVnLt-AIVAlflrhhkZ7cApmssq0Tz6QnMk5q2eiSo5ZBhwaTS6a4jEV2rHPepnnA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
