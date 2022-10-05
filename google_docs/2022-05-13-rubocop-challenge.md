---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/WGUtHZvjqM8Xwn3t_f1SMECtj9WLmOt4XxM3lgE9sjc9OPE6R5XPU-0I9m98l9sZQZx22FvacY2Q4cwSI7pjqd1GBKlkNXOq73ZoBaRR-o4jbAjYgZ6atWB2yY1mn0dhGBdUp8ROn8bgc3TO311uWuFdGjJP0pnsxWP9mflkXHkAozTBM5xau5Bj)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/fROLQ7H_mzkdqfGe64D6ObWKBkBn3LsZSJ656VlUgF1LHEmG--Gz5-1o36FCuEb7X084v2lS6DxRCHTh42OcsMEnt1ilwouX1-z2EVrgzo_fXw7TWOUufOQ8wPvqNmamB-9wXmyVzmsTTDY-W-MbxpN2Y8L93M8DqXlbPoNsZ0oIHYuOGk-aytwm)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/uANCrD4ycY98vTkq7LiuE6yMp0RA7g3r5uKaX7iXAM0nAAVL0H0pJEn8tL-4EKF-QY1Ue5Nyio5tQJO-HGfV4NVQsbgl-TnSxipAr3CEpsHebD9zL8CxAEcFX8iQx5dIXNbOnood5HF-3isy1ARZ8v5iCNrwa2pIqp83VCWae5VqEMw6sDvlunb3)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
