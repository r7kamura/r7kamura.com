---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/CQMQhRdhnpAI-V_Ix6RuHPDmGZCrOqxNB381-1NZUyYGX8ne9gIcsIO6nP24iu6OC2FC8dFfn9qTXsBY2W7wUJzQrC8oLbcBC8Q4oZ41sDggvIBCI4kp8kLKGuoSw3OQyhBwTk6y0dBN3UBbQQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/xyV4NQ96ycV6X2YhMuW4x5RVEHr2Bov6TQYTx5xdqdD6NQ2U0aVOgRHt4M3_iUS-K3bdVKkhLqddEm21KnSV7ZSR9eKB8-TFKOWx-uMFPwDP2mX4kRWjKthAbIRphYrS3yS6YEbMQ2FuBPXRLg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/osm5BuXKPVNPyv18MhBZ9Y5-iJiKyRxpBf8JbIf7R1ofDWWtzNVN7Nq_1q-Yx_XvSRjRYiT8_TFrgRNttRpLh_SJZ4ikq5-V9ZmElmJkfXdBmR0vjr2PMEwb650hKge6TNW3bPGtDYm6DyGwOw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
