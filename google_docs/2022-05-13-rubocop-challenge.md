---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/86gHEpeamQhut3FfZAbzlqR29oAkikLO_kLDmqyTGBzbI2rbo913OdYn4vK2iHDJPoclT-zMMbrIb1ntKApYisOHMOZkyzGYvu1f6vuRINryob-1oBWQIawsyXLWYD8ZnHQ1A4KUGWFb3vXhiw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/KZGAhYQ0DS8Q8swg_LmMPRbWzo5lEfJIFlAQLI7wocB4y8mXtCRo2o5U-tWJyLvq9LSjzCVmg6911Yf8USNKPixDr2DdKmLH15oYRZEYMjbhA23DHL8dEa6rc1F1rixokH8gepF0cvRK9ArJ5g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/01udsS7PuU8hHOZiqASsdhkFrpIchUC4j4UCSYM2IpL3U2n4uPRIpOkhW9I8JIgibhrNqUw6i5krl-2Pz2moWx0LT6h6kRdifxbb6Os6ZVZ7m0NeycWRB6ZtXeB1FzAF1aIBuGi1kV30SyQ1nQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
