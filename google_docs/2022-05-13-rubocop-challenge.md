---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/SSd3iL1r4cdQ2Hvr2hZ7lnR02OW7NIbdlLiy-ihl4P6C7qhvcuA5kYq7_vqjP6fQav-cHU-gfdmi0DWbY1TUYSMLg3SaTFL7p4Cfoz6JJDAQ-T0Hy_OMrDl9B99i9_w0wh7CzZV9SoqDAcUGeQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/qBg8AnqFcSnULbGsk8nEalyo5eqUKYw61D2kSKuAjdib4Vfb5Ng0aXP-yc3bQd6R7I33lr8LsA1s8Fo0wa0UTar7yAm8efZY7vWVbisWch1JTxUhZg2SBtvHzhSSan1XrweIc0PGFlf5wGE5jA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Gr7ou_3UGmvHGPnHkVTSK1RUah_se-rM72ys50HToN7FxiK7LfGt7embc7qkugAzxUwuUB4o5Ba5-6Fw0UkP1riL1wWv6ONta7X8OUypE9_zCIiS4gHcYFvlGVDt2HPtBxQrH65OLt6NtPY1Uw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
