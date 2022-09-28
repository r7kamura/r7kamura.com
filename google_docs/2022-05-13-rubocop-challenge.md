---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/v49JdXK8LPULul31QbUtC9CZI9D8ol_GhvG6fUUuD0GihLL3_fcKP4pSn12oRyUiUYVAoaUU0zT2bajfndwfvHrvpovlXdp5DrrjiR0up4xAdQfaQ4l4WsDUIxiYbh55VfC7gWICL0jRGtFt8cBtJ5zPzZxcRzvp43XJybl_wltLJQl8vK3qHZa4)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/YQyYncz1_e7kg2E4bgK5R1lxCJHWSA2INt2pYmHvZf5VzyvOGsSrMl22CjTNpw1yS3zy2192veDBWwxK9DwWytYfTDYb9lyS6lBQaEoimIq6Jom9gLqZubTbBrEkoAv4xUf9dtfafipWIsZzSr6Mwzr8ACJodjr88AMb_iGa6CVBB4QzSPoN7XVR)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/W6yGcCyjTD1ZyZsb0ry2nkvKV1-mUbzPmQJW1Gnpd-POc99rUYoJvT_x7rJp9xKlBGiwdjQfaKO7ArslDqCJOSjR_b-pPW4u1LMmkj5GtMqdAUk1HkZ0Mq_9bC6sCuyNZytGNZZfm3EPMDOfZvkD7B6CLPYZF_yVP8Nq21uM0H0Lkky2dQYbyujQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
