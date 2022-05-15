---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/r6Oqo9oIo1Odo8In7Ilb2D2Zh5YsDgt06ah5lNJAzOtTfCkjXZLJmVSpb_cNPaPBZ8Iz_CFEaDi8xgborA3bd-RBXtT_fkGu4OMZ48XreIKRRvVefIo1LYzrcH5IvfQbNHSF4nPOyifGU6wM8g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/1ppgrClDN2tZwh8sl8RRwYTfTp9w0ABe8zBsKp-j-FLLZ0qbDONc9K3NRnBUQSSJQNvZcAQ4Lb90FskdKuOx9qH7rL1BPNSHQma1q8fADJBrHXw1-8ged9KiZx6tcj1l1m-btrUkU67VyMkqdg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/Nost7BO-acjFICVqPU1bqxsW6Y3pJ6lLfRR83JaR0YFS4ChKIlkMLuU8DN_H_554HokGl1clx5FILqBd6CXYCp0I_N3tMSIiBY0jKaumPVWd0i4SjaXjdF5rTPnfT6ifSodi3_n4vUL1C5rHfQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
