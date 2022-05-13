---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/4J1_eM2L-846sc3eUdOcyajepRt8q-qfIOSLRveUub3ikOFHadp7P7Flg82NU61A-Q02ljRd963BfSjswvvRlPzM9BYiROewZOjAMvS8vONLsMvPplIfrLDrPY8u769Ky7PcTx8bdvit5g13Bg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/QrwmWs6mufB_x0R0zjJvzaLEuuUfH_PBlEgxuI8j5D7_dMCvqHtyOj4bxLYJWNuF209B9QpyFCy7AhH7ASc0XOE2OE4rMX5udib7BZJzl-2FYvuWhdvG_MzXW0RxWCEzDST_ioA-jIBXHMxe9A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/1xKHRlE-_jdVLcXoBVP15eXl52aDMO-U0qxcIqTl-I9S6_ZxPcd7yeumC9s_1SA4uevS2yTtRWMuLHLGPW5Bhevi1aTq2zycA8MjJQydlXI2mUBxD_Yr2sk6r2lMtUBn2Rhr0GH0paS_GFY1-Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
