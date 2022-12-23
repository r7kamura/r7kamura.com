---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/IRGm4fioszCSDcKGO2OPIyJb-buVPOVQ3eo3jLFMiMgR_3yfVMP3gOA5J0wyoBIMWK4lRVp1PokarPTadJX2pihCqcvSXWTZw2EzMRNwHIdyWrTxKc_yLoZBLe2qnu4hLBucMBzI69AvK-IFJFXxPsHs-vbh2BoUuKJwXG_tb1h1NxEQXhDWL4OaDQPq)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/_g068i2xsQMgFq1dUR7rN-VpdqEngtxllSED637pRG37sWFumPFCvAblnXoS38BdCKhFmVQaG6RTnRsdHaWQ3g2HpYzpvnoimvn7JRSHgTJk0dW2xrroTH4D2n1u7wFby2MwebwfaV9GnEMd50_108gcyfrgNqDNlpUfpae_3H5dW8c3TAKh1TdwlRzp)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/xDMtfeX0Q3A7dgyRabapne5BMts_Yp3XlwJJqrnHeN6iZIq6YB4Ry12jH9IV9Pml1Snx-dGs8DuOLYbmGooQyxIKy8Ckwg8QIevceWhO7PkOsWMjruxZgvzBDn4jMuNKQczBpRmiqABKFb8r4PlPpxTqi__IJ-KpzqDRIc7s1TvKmkbRFfJIDohgN-ti)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
