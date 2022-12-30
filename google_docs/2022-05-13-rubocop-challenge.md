---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/L7RHEEIMxkKxf2Woo9p-0GIr5RwD3DJcHIZTfnBNxbKJhlmefF_QKJPBJJQE-FYQUAnsHmSpCNSypuSOdWSBKcHpvqhzuLkXX74Tz5fPcVmbqE9fqBR8q_WY_yZQ71niQLc0R8QQFR8XaqVfdGmk0QacWJL9loGYckXx2Y0tR2blvHcEjZnWYYWfsDcA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/NmIyPgJxBeIBq49mtAa2qzU0HJJWscDJv0ELrWNx7x1p7gvuDZ2FdBcH9u_k5519xt4L-RRPxcgkReXk-1fidgnB56V5CLLMlOFH98wTA98aUGahLOi4-6NTDMXth1X29KQCNy7BLA91RNYZLrDrW-eNAkkK2Q4LefGXxBtJPmVoOUMW2Eqmpdh8ojGP)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/8b665gsuzjeQ-sTHXs5nClz0HJofOiiwZ0m2SxUyGjcRZRBs7K2JZZA8PF5XVbS24B5lHqz7KdRLQx5tS8_w26t6j5XRmPmvslq-prHjMIghmux8cuEOn-HxsSX3nOaMQ0lIQRdthKg8-A9GPMUas8Pf0jQ0AMvza3GrLDRrK09UhgJtsYD3VUvVfGeh)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
