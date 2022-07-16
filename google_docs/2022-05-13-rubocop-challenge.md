---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/ZI0hcfOBBRvrB2iXDfDcc9NLsUFJIc2iOnIQ9rzLTeYmwT8vvwliphduAHaoSCjIYthdQV0DwLse7fOX8zvhjWo1gg-tA_aNdtmSKrHkh5icRr2xeQoGCLikubSSsB9MGIp5ChLSPMl__6AEuA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/mRTF8hVH0DPiaEtdGY1GnDr4Mg3A_PeMCVgyhabojSanaHCm6ObMuh3ppQPelv5MIneW3z8IOVUY0BKgJfWOj7sj4JS0w70nTOdPOXu0ijwpiCQfG7a2SKHFNHTOoEjMn4jIMJ10stxUf1bkJg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/l9qYC0KYU7u7IIFy3RU588-tD42xftUhWoXJoJnFw3kd-B6JXbeo4nFDeCj1vC-OR2V8GnFHcIyQOOXGsC1iwHomf4vHRKvUlaLucDHpBHErdpeVZ8GhW7jvPMVkf7OH7r-CiZqBvIPX0AttbA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
