---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/Ev-NmvgzY-8jnRScmSPxX5xUkvl2JTj3tS9rccy-8j8sV5mdNuGqk8BSoBetltPza8Eq8Pc-n8zX5U51wCXotCYqrGlHK4nqY1XeAuckUJdODujN7E5DDEhQeDP_lAoBb3Tfci9VV0pxRuKPA7nHqg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/NUjPy9AQa2hjEYQA0Kugw643PI41KF9WAPy9euAzJVLL96OMGfsw3exzBxRw2XyF67-oZrMWBUTYsX3RsHHNeGWXx0Ld73Rfr73_nFJUkEjmi3BwyMeXdJJ60AfgJxW24deY7aZjUnAQJTqo-jJ6AQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/F3NkULXBEjqRza0SlEKKZ-5ocr7PblSsBwZG_nFV2dyBgtlLQq-jRqlLBbcUVqxJJNdWERUs3n6_t22WxXFnWlj3eExw64AeJyM4Osjx44SNw658c0MrpG5J56l7p17KfbjPcrP2nWexHa3AqFJLag)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
