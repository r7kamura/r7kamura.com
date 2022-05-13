---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/Y823TGn0R-j0_yHoDSfWcTYACIdKTchtFxri2Arm7ieRqO5MZ2Zgfz0_Ok-qZqcWrnLlViL8JJBXI-qp1llDAvfaVEeuCRZwPha4zX0bT4mgTaorXUaVCfHU0jTyaakovPHfmCuUa2bdX-C9CA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/ZYbsmM38pfBRdqVXjZe7Yfy3ORrrVYoCUMR_rkv547zzZzgke_dIwRItV5OvhGnHa_l1HYhSnN0wtqS8ttzzW1zkcTS2CwxRSq5AaatuhceFnmWxdJX8i35O8vhyAyX8Go6GiLn2JgXqOyvrPw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/wFJgZRuGbtF69JZuVTTQyTJ4XDtMHTpQ4gLE7Km7lfjNW2Io-jNcHviZ-e4sRjgpwmDGpeZaqVqKWfcWMIctp5J9p6YNTpCCKoG2LW9Phjfp4X2b41JO9bAODN2QD_hrrnaeCSDkGv4VHucVIQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
