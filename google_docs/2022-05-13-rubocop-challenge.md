---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/6sb9rNtkDUCrZ7uf1S0V3WXtLW46GlF1NBadybeplOsNu1tfHyfhVMeIZsfuCYQRotS1TbjolGMaWirwPKUr8O1Ez13ew_bLrIpk2eZvp9SGkzeTAgdz6vTEfaM83waVxt3qyzi0snMar9j_ZYoFxg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/INL1mLarWjWeK1LaaiTCfH_1m0vyYg4wSJX_GVNhNYSYBvlRGKU-kTKvR-atQ8Rp2U-dQEmsKGQMzBiLGVgNW8wiQ0SQqSUUX_6H3UyZB0pHIQJusekwTqfEflExk3s1YRstMiXebllwEq4MQbibmQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Zk1n52jCDBWZ7TVjNbMLDUJKp8Qrj7te9RqbF5HDKhB8FwHazulHR1z2gXAWx-PvrPWyiDJ66Xyue3LRhr2SmgC7IIw7cissU-Lb546Vm9iZDFvSRbAJhuVJAzXk8kKcYDX9WlRASRlyVe28gAsd9Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
