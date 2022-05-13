---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/4syLLrrwjIoGueItpC2ZVSDx2PcdZgNWitmZ1AGzhbjhCPDui_ruLbn8PUgwV55ewRlYM5jL3k_-gUfTdsBAnk7OlwD1MOnDtuEtYbnbV63cEvyWtsdVMY62soIC_gtfqurauATxo11Z4RYy6Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/nBn_KWiC0u9XljAdFdjAanC7ARcSZ0JlrhwYcZqjZzuG0fP4PpwOgltWrllq9PPGb8GcWUdctzWboj9E2dV3F8K5mChyIOY0djQ3b5NbFiDi-lF-hrAH9jAozhADBoTBH5wDnQv34-ibOta3Lw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Aa_v-S6XD1anSzIumXTzc0cA7WFFthAgpW4Q0Er7147GPANQ9GeEb3QB1AWvU595lZvKBQIWYG2gEjOw3LyhEkpqMtlHjQjY6b5mM28NIKdQFhiFasCK_O-2HAXnPnotq8KQCH3qrJUCZ_ZBBg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
