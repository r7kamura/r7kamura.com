---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/61BlClvcgTrpaPJGLohy6SEcGXrNSd31Owmvpel_ak3FoM0t4FJ9qrsryjufDbP1W3Fy4VNV789VLhbX30Q0MNNfvwtHX8cUCX3y-mFMoYB_RXhyvYh4L2Jk8ZCTAUAG10rqXRXGKt1yLu1eHZzykIX67IsfLKz_USsMDsInaJqpiTNSfD-PLbpsVPoB)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/qdqySswIs51xAhoEoKATezhitDsc3yN9SUaKsmLzrEL1xL0U3YWxeNJLySeHr8KPjpFWyctqgjRyupa2G9ZeujV4gScoDG1WzlU0vsNaZx6uFAL4IgvznMTCUzUuRKdvq9rqIKRknKzMMDqIP48U10h89S28SyxG3qcdeQhyGofzODmOCgDvRa88LpEq)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/gKdrcaRZ7dU6YouQVyBuiXqdsKUobQ2fM6iz7w4VY_gjJ-HBfkk21_PkWh2HXK2sG3ZlTPHPSrCg2KH5DRVrAHrnHHkn6PhHZreE0PSjuFSTzLgX1KpLJ4EfjQZpTRrIaz6701jEksLghTksEWFTODc2XyQtVLPl6mrHKwYQ31bUMTu9d1xsPcWa4XiM)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
