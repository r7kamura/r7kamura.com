---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/VlhVAKd_L04yGcskqqhoVQ0Bfl5AF6hqKGaUP2_2b7G1mVYW3x43IXjNDya2fRgPxa_GwmSuT7sNhnjXxEGCjwojN37xzDqFwVP6ehe_8ljKRp6aoE5zT36Ps3BScO5KJARLxLErBwM1ewLRwA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/XvAn3KZBS45rYorXXNvBYa9ajfh3wITm0fRZhALZ4SQpGpWB2uRJuZUPVlYcTvmert6K5yN5fDcBR-UYIWr2lAY_SVjcEcXrRXXSEZR9Tsi0m3lsQ_ZvgJ6tRrHLO1pk9dnKQNDuoZ84OKVCjQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/775gd_RB4-aDvye2ppk9ifG3HgK_WZ5UFlH4eF3_MCxzFkkhhKn3ExzIpkexCh7J0HpnzMl939IPP0VhAI7WRaacvehCBkCjZ8xr2g9BIgFfa5nvUcou4XOW18GGy9O6V3kjqn83rfcbCxoK8g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
