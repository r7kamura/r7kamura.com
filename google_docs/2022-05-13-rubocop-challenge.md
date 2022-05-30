---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/Lcdkpo78XO9gsGSYTJtpZfQ_YJ6bEhow1M-Ub0b8etaJJgj1AMw3fhZCCqf3aTQoz9fkNepHkw85iEN90ntOr7xMSUZYAx9FmDSQEUcc1eKfz4Pkg7cjLY8syxjreMbc9DBNnoTnoLWzj01EJQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/qMWjnP7yfgagBSlxrZrpQlDn--HL8TOnzIcQcEQtgCoZt1-wyGZ9J3Ew8CX5uUOWJHVyhmmcbo6H52bl4PD3CSNCD4FgOyfT2O3TH4X3V0hwXajtSUZkG2tLTsAY9W7w39NxZJgKophDCMxgxA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/gKgHYrrUYvAWw4I-nlkiBo8gMgKZ_IOyA_ezoJqZ4-XpB1ecZK-G-2i50OY6bK5qHlsdfTWMbHJZqOdyJ66CM8txqWphMVd1YstfLLjBstL7p61p4OcDIZRUt-3eZI8cawxfnOKcAXX0NNvmLA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
