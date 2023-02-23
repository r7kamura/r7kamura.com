---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/p8EiENmjouNeMzA8jiTJ0tyJWOz9GmeXCJJnSnaIfqy9-zoY9sRwEVrGin1T2P4bBBj1g3MrtVtx-ebZd_m2NJlnnU1s0k-wO1H3e8t1YN_GM53QAbiCkxG7PlNKqywzaQYNAJoNkX9wmlxsC4vEwQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/AExME9ZjuLFaXoOHuRRCbJP5ZUdODa0ixPKJcy557WSi9jd8scxhXRPg7vrH5SuLbeAPr7FJp78YisSjQBTfqH1nsI1zHMXCLmHnXlFAFqcqtJwauCgIC7pMYYpVFmUh_G6lKKXUjkysJYL0qxilog)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/LxUqFMc-RFzSeGIHDfiFpDL1KjL5uoUTNe42YxByRgZGtFz4pA11ytJhYdUkiYMBvxAZd17VUV4MYvv8Kkp9IZaL1VE_u0D5Auv1bNCzwJ_3RZAGerAMpiNLsLN4XfzOVLFZgyGyS9uXTjPe6Bsp1Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
