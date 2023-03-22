---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/YB8JEHj_YsP4jMblshSM158fJj98VNpKFsnOFdCpUEmOE20a03BKfpzL86Ev_Qh6fI_0GERRXTTWagl5HOuLAH-ZpYljuTLnZiT5TocupPX5KViUGw1-cs3g3DsOlNAdGJD2-uI0ocM5AFZjxEv1Jw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/3_VVQ18GpyZ4ODkobBDr65Ni5yTZrk3T9dnCwmBfxuUGikjQJIt36PwFMYyUEFV7rOrpSG1t-Mn6aujrVJK6iP1isb_JTZvQOcH7xCrNAxkod4ez4NdQ6eQLGHIJ6HSfBietch7cUVjY2ZVylWkhnQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Q5R9fyCTo0NPejWe_JiM9G1ijTSoR_MVN10KuY4FxP2VZSd7GxICqk1YVhqAPA9TfmbZcfzyoSCFL2pCrU-a60eEU5kyXzx9a0CcxFsowENstLRkTKPxqB_YrwMkOjBrCxgGaR2v4C_NlxBRFvNobg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
