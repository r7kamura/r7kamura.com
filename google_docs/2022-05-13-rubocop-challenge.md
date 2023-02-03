---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/66MWcU_lRpFM3PjPR0Uo2Nf37fN4tHRrdr5wdTyAFMRMxvXBzEMylyuuL0SdqT9EQuYLhvtInYegMU9yGM5YFzO7GlQQYhZsDPsaxdA-Giuu_nqqZPk8O9KyfWSgH12rY1fotAZONSazCOPEOLM5LA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/XWdl4NUvqlqS5dNp6rWHR4czB7qUFfEN-i4wJAma1SQzLHj0UOQ4O9Zr2JVgKBj_9FNlb3C4ruHdtyEnCITtLs3up7GyFvY8bGcyowM_sWrz87TJ39HY5NSCIU8WpVNswktinI76IkDH-wJ5ZjNGAA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/kP9IdScXXTfBTdhKXfuuKSRH_y1N-ojT5kd23SCcKJL6b0g8144pmUd6IBf78uRpR5C5641mKEPpc6tLFgblaM1QHCfWt-GIbxdVgtn88fAtsY_is0mswacwDP6Km6epvgcWs2PB1nEDt1XwF9wCdw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
