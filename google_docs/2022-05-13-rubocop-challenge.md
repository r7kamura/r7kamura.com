---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/ewlFP-5yh1MJJWAqNiPuTqHysjxlD-Xy3xiOppEDjnvs9_GZxRlQmg-yze9Src4A8UQ_lHlNT-OfcKH5gSW78w6Tom9sTF8d1bOfUBhqisMx9-ij7-PpzI0znsvoUU73R1c2z2W7f61jCjWPqJ-ktQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/g42L2-RyowXEPaX-agl7cjt1YsRjGT7UReHiW8S7oVxFA2_8w6yLz5007MeTteC_acJPKbLlA2wivzZjeXadQByaRCF-6yLHcMYKOb5j9SmapaTM1MQ7cfBvb6L0l3pC3fWjW_amdzTpVl_sk2lGBw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/sn3N0FoTCpLNgsC4kDNn3B6PA6PGgU54UtURiqsce9Ifj1aMfrk9FYnAtyijSbIIxftBqt2DTyh8aL7t7IROzame2rbnJPNQ7U2Arh0INhmu2Xezkg6L3lH-LGpfXi37f6Gw2LZMplM11mLB9mOxwg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
