---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/EDx4nxwo6EY-xQfsgLGujZ6WRt2kbNM8MYVDgFq39YMjbZrUapeUaHzm1tGSx2JJphmsxkZNqYvVDogwvM33Z9iv3VOGRAtgpRcfAcrqrDt3RnuK_k0faK05yHVcfpt_doJRnqSNaKxGLe1tJA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/oDA6p42snXD5WAnget1jSM9n2XNVXWZxrLpsCAqQmxE_fjI86TrUeu5EiaU_2sKNorcVqueZn3zEuMjVpMp7s2lSwrPbLRuSrmbkl465Au__p3KS_jG01Ob9DXfYETEthfeP21LqCe8O_hT9kA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/1kcy4LmG9I7T-P2EAH-eKV-diNSHFzSS9dahID5yYEN6humAzoChscXBiR01U3U158p_AOF9Z0LdzxsoZsae2KS-TXr2DqDfrhJ3XMsb1YQHixyiH6RDiHkMwA6NZWj_wnHVq6jDy1Tx1j66Rg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
