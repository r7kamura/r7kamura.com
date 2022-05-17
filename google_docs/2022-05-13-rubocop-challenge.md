---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/afSvsg_-YkaSJ-SEN-gnsRc-UK1NGQMgKuVmLU4xyiP6kwsovj2yNgQ8mQg8AL5LM0boQAxdXxuE3Yz8d0bk3x2qnI-AmmXnS0qkqgHUc92C28bCV_2UflEfx3CgKSkwIWSbKoH1KV3eIN10rg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/6W6wkrGGpFVZ8PxWfcxGpFMl9E9r1aIO9xg2-suIMi5AqOv0JMDICZu4a5CtOLLc1RjO4FPohmqkGoIEmFQp1XjnV7tCPbkLYV4cB7UQKGGbldyGrI0Lw3q0R_3u25eCY7UXZbPb_-yb_Lg8rQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/_NfwiFugju7bGsvEvRc5jevVKqyUncY0_46oKOy7xbsvFDEi1uI6pJM9dEVlM7BybvZUu1DKe_tnpGmzShIsaks249sBQERx6xGsrmM5n5_7MOBifORxd47MLWXefdRhMPRUBQDLNDFUvpPkaw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
