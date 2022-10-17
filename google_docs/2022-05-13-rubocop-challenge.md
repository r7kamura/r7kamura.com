---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/xDbzT6VLqkZ95ibrdZgeYuKNgnG1KEOefouh6iXo_77J5bWIUH3N7eTNhy8l4SkRCyrKCB2YnZFz_MRr-Td1bckGqzHN5dH6VKLOUcb9byKs2kK0CmjceffnZLjvsCGxwdbxL3rhNdY_wkpNZ6QUDM9jjAK7j_JWTokK-Fi63nDwmP9-FnENdbS5)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/23Zu0SjXtZkYlB7VDWFrH93jMtWBrCqQhcXZAEDtW8OtKi5sl8OMzcKLog0_uLxV4v9SpmwDcrcoMVLPrGFGS5YaiITOvZUxGB8kidrWJhlkEZOLyxcdiXmZsZHoFUw6ttzSFITbCYWa8UZMF_DBwCXObtmjDPZnedgvbNsys0M9TixlaHmNeiHy)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/63Dli_fc7zb8Z7fkOn8jLtqfVqCrnzhNXZzC2YlVZJG4BspJWrAq03IRTNJrSWvAI9KKySBsKbltgyc92LDqtD0hWhJvIaKrMbNGQ4Z1UHraFRC2Wj9VRKOVKwusu0-tGMDkQOqaAIA4lqcGrwZrjxrHey-z74i2ZbAfe7AhzpDVa9yxv5uV9NNt)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
