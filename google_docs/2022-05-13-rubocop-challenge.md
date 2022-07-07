---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/LTokxW2zulhnutC8uZ20w_19p87LlCPFXj6cSmeSNYCTxieQvROlUoFwt1hSSTJDLwsRT5d-UBht9hdjEdkO2YvX5X_zTBBlPMZrphC9a4YLtIi29CP64KuOWkjecxCNID3NQ22PCdQ3FRt2hA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/p0u7E-00FKfA_paA5Ar04L4M91LQQKodD1N0yHewPNUcyU-lqdVHSkBPZEsVIUz636iFRxvvePrerP4tSRj7MHvD8UBi3d8T2XC8Zx3k81hy1vATpVjqG_5bZjbviPRAIbdWtfixFnsCNncgng)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/tfmzDMsyJuITRMZWIFiarNN-ANXlI5Ryx4-djJLoh4ls4PB4P2ADFrDVP_HydaOfn1YmhKuVtzq507r1eaVKjFJBaxgTZbZTyjkZWcDrPICTZTkVv8CC-d_dH6-6TrzBgzKog4htm2JTbsj3mA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
