---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/YI24hequ6SRfceLM9RfVrky7EQPebZoK27vtLS9D3ayvbpP_zQX5WjaY7iXA57pZcHG07TffFncyHa32chLJv3NE2nVelrACuJEU9zYI5eWlT6qwnilnqMuBPYBp3NbXHKmCL_z_2nY4pNaO8Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/v-4DZi03s-IMXVvRd8ilJiMW3seFM_WB1nn1xuKtPAcnMPXpMNOQcT3xyJIRvi4k2KPTF9WdelHY8HlMTE3Rx_XYWcqHoDjvtr8vuVbvnxEwOFrAiZRZkFPH03cnTX2tYrGdOLvFqNMd_gQs4w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/Z0XZB0Zq3Bg5N5DeOBnBh2Xt4vv-rdbBnusZatg04iZL3kIX3xBRgj4uOOUYU71CCh30qUT2MHB6dITL7y72B5JOtbEXLJAmn9K1qx__01EXgzUh1P1NPykGfc_pHvMfqhNVVFbo4VrhZzPu2Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
