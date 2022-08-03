---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/yIFS6bvq8qGTjRXKkQizFuSFS9LoFK-D3cne--59rj0moZr8PWmUO9dcI2SBadwvRcNefKjMmqhVwVdZipy8q7xzddlo1FYQVeE151E9HkRzk8y2C8cqSkO1An6rtsvpXIqGN8war86IGfZ_ywxajA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/RXUPEEauHQp2tv9lHvXd-u-36Z4TFNnuS--O2Aoq9E1XB4A-tsUwO7mjyf6aL66BEDNAPw0yjYr3rHZI36uYaDZkTfx__pYAyJmAhT4286mOSQSomDJX4fAY8AeG6bE_NceoaW7HaYql6YcrQGOg5Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/NmAm7sWmuJ_uAhQ6-IaM6nNnAFE_BpukCbDw2S4zHIp7FVeTwa-nts_ihYF34ZiCkRDvPeaHZflsaXMlXYUz8hwyT4aup4AUI9FKsF6ZG5ZbgCmnjujsjX7sn_L4mk3WJ3F6UCy1DkO04yQXNbaWuQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
