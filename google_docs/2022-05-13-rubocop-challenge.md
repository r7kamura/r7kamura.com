---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/7E66-BdaEgj2cUn6EP5oaaF1AE2nBHJpaJNNIVJn-D1xau28FTNzKlvZaiLewOrf-x_DBcznDAFzrHGWvucyxrjvN5tWSyxpnxW94APb1HXqu-qUdhWlKcqXp34O_CB8oM-Nvl4Kf5NHqJ16RpVUqRA6dADzZrCBlylaivULTLSYo5LzRN-WB_7l)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/LVUoMEfBkS3nkqlABUEquIr-bCpqWow6ngippLE05OaycvlZ5RMfaFL34zlhXdVr5mRa3jad_j2iDYvktauIaYhF9Q0nAdU_0qD4TBfLZxNdXpn-fiMs1MFghFazrerJ30EMe9hT7ybnhSP-BQNPiqB08ZdvYkoz1VXERieMCV9JjQZkt63ueECZ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/evb_URmSS2oXp9O3T9Fp6JDsMnJUteORD1hQc_94ZzS5ZF_-61LnLmDkQXd_1ZCdWKX6uxOVAbKnow17xNVFah4Gg8pvZz_rcdT6GWv8Nn-PKIbR4h2pSVVWbjyNwEjpQOouGAqsdwyAkRriPkrs2YGJqsQknIndrIJGMjeBJJu6PkQqlfAfh7qq)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
