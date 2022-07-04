---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/tm5E3JY8JZlCZCmlOJA_Ka-gcF5lLQ30sbCVn_wEomxk0B4AvUUAZrZJteHjqSdClrQu9hS2jhj3r2w4l3sxE6SNwt3tTtSJPVAhSEKocD7QrUWRNhkWqlgvmkS2BGXCD7nlVpkCDPqDqjjJtg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/4azojKRK7_CDSTD_3jMCgDr60zD4RQhpiv8yr9jp08UMlsFNBlbR-00a5Tj6rr0Ib1P0IasdTgw8B2hF5eVfokxgVJXENteHHUxfwAWUvYCQOBXarEPQzr1JJ1JicNVkPVUprfZFyqpaLvqLOQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/5TgExGSDbNHPvlciNv0B4JqQbjtxBnRRhmNyG8G02dSh5PhsfMVtyCDE-i2GhxQFBfOB84433cN8TEtCg7AcY97Rt7bATFezabAUH8X6O1atPFI3od1d6-7ozHSwrv1-nBuXHspSPThTocqj_Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
