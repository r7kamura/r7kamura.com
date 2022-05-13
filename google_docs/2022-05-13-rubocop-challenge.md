---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/kcyizWm3yJ79TrecX14e-nB0qZrYlGRF0H3ai1ZWKpsgy0ezbbpRSAHxQRSiGqQKzIByQp0nFvbcFqfbdUDdZEoj0atS8WBzNIGItGeomLcmiV31PRk9WAk7Ta33pFjXb4BlrQn6_uBq8tRBPA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/V5Uz_tyF_0Vfb9t8dGRYXlyEE73P4dox-ZTX1O8Bco7Z6TU1gaFG-Jrrox-2MULiipSYpxWM8jLm_3Fer6h37kagLgpaj0KgTykfBBEk9gM7Wmb8YtOpbASs-EJcKkmYwlpnmB2kDe_ium0Lsg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/Bs1avXcm-o1qyz3QhCtVbI9fQu5BHhzGnoVraRMTv3_zlcSIiTRVyxWSNpnl9eb_8MzeOptgx15zojTs1wr0L9_E_1MDsgiEA0oyZMzxiw_Y0g2YfSO9GOalGVwVFOuogHvSZXWUb2U5PM_3hA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
