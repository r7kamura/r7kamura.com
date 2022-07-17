---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/EylV00DnhjVB8QZiVR7Wow3BqRMOw0QBY42RBBPCkFEpy1Qo8-4WOrIY0WiqDbVM2nPq4aKhjJcR7tdurkvnRQshVrKS2VEg_XO9l8U1VpLHrlsB51645fwJTcXrY6kET-PDroXlk8p4J_PohQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/7SN6BToxJ4AavAlV5hw2mFdaJR3ybwWQi6S0q8TI1Tti-fVsPAoA320-QS4uDSXPpca7_FrMmWffZTqoHgSYshVBZa-zAqRNsUzerLf7S4Myj7XGeaK2zcyTKeJbej1ySOv8vr-1DfD7QAXbCg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/WzZbBVDFbeG-liwSxpK08pq_oKt2tG5C9IwEQoGEpFiHl5VcPW9MWZy9dtAkMC_mUl5czU9qtWTYXKSUsrMytFbixajsFFlUzlib9TjEVJ92n9pw7o4uLSPOgPTcePvqvHmnYK_9-2tkd-T3Mw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
