---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/5TegdiDV4TmLgvtz3R3o4DQmRwHAZQbL4RpC9oP-QTfXBg44gNb3rhVaeZ4PbUYwE9zVEW_nVOMps25f56dHONao3ZlEUWdfE9zGeBt_by7ihpnH1zhWWN5XUEGuYcuehVI61iZmwSjBhLdZwA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/BnDgAmQOyugKtQ1pBFOsY5PqVHtMI1Iuri-_BQuzRZvOor6RopmKi8IzwF7lIMzsx2f0XFww7YWb2Bp7hNOnCZAOzszaMg_RlkPf1grysXMG_AZg36ePtKZS1VRtiXo6k4reBZxE6LHO66t6vQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/9kwjG1DI3I6Ly1L5mpDau6cLB_w0-Fh4lXBtaMSd7ShxID-FM6LPekk8RxGrbXFG4AzbfvYLXnFXtV5QUOv2gRJt0T1ngSm0gF531VWsSyjVykoVAdUSpi93xWbQIVAYTAs6Y72uohUHq2NgsA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
