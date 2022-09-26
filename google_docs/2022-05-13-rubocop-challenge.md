---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/zmlr7Q-4LtXtvzI8cVZNuSw6msnRm4Mp8EjJGBxxi2NsIt2AyslLncy9Ay_u0uoro-ZtvgGSCKPpTQVqCGKAOPHOjFeDRSMlB-4-IuLKRcdK0Pi28KGAGeEKZyW47ztcfoxKceohsg8k06aOuNpmyV1CJVPlA_vCuWtLHMk0LrLXAjDIO3lJ3Zbb)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/agcbGJ9NgrK7zpBEdImkfcNpRosp2AMCfDhfr52tEnjPzg26Sm8grfzfq-IIaR1Zay56c6bOVICbQb91T1B7_bVbNiVGUgjZRAIHNunksEzEsgirb0ApC7ZLLXwxZUWPSLJZ9cZKOeFJ9cs0ouwTgUi0c_6sKxoBWnZHSzVZEVVTB_cy9l3R79G9)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/t4c0n9DMJuUNXcyccBToZfv9SkHFOQd0wJtllmZS63tzMUJYEJk9M28q0H7jeS7oyTfsdVlWplzUptVM6ToHvNKzn6oZfTIfD0TUGE4KdvWIjBSwZI2OpxEVrTVPiokVyD2pW_jMisTV5caW3yB44_7CoL5zBR4_Lmr-X8c_La7dI0G_CM7KaIF8)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
