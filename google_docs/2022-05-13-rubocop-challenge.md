---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/3DYJAqAz62CT1QT-vFgUtHRA3kufJY5-SPWSf6aXX0WsLEDDOIG8chLX2IYv6__9N2F9f9-Q1ZZBpkZ16sMUsK4Z4VoS9Tlp0kOwzAm06QAWqOf4_R1HuMhKL76v4Oa7OX3jEaN9S3RK8P4G7ng2Xg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/NvdZUvKrt6DuDLG3GljZ_fiTEXI37qXznbR2SVHSvbYV8dz_3qz1SptrAzEezgh82HiC9ednSisgMxMb5pAlcGzZV0vFFrOhMNon76dtRmdoobkllHskEXxUm6_uruh0MzV_Bt_kTD0XmYn3LWreYg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/5qTLEePwIZuvZ2y4hHbNd8-MolfMnZQyuWvDiV_z_jYRzfnJb_xl6UHovud440l6v065r5RToBl1h0086ATA-AQJRMBY4V2ndOvn3h_gdWCUiUQS2LR2QHs_LBVFE2CbUeWXTs3qPhxFDJEdr2RRlA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
