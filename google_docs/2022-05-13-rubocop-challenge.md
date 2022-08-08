---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/YvaXXWG24RUdiUAoe-SL6tGwWXJlliLtj_M0qHZDj_Y7rs-kkrcjX1XrbWhbaqdRhixgBvDvutZZnqayKqoHF3eJEERMMhrUYkNDTwwDLL4NtO53bnMWNKjkZqk1oEQ7PLKax2KnEOzTlazpVAbvCQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/JaxrZA0y83KttnwVfz1d_38RQPS8FW4EkjnRnUPq5QgfyovETT0d770vkuTan8T1WetJg-ChtB5Sl-4fZzUcGWorarsRuW898Ta1c78qwlyBM5a4gxcp115RuamB8A6ZMT1O-LvZ38_JHzqxG18_eA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/kBa8X7ZfICyqEf3bUKuAO3KHtbWa9SDQASdWqJBTPwCB_o5LNTCnX6iafp_tvXJxQQXEOzHawBF0NnTH5jFoyjO5HxKGkOMt9mvKP_RvKdy-wkyPoHrU4YJebYTnZ2sMZT_VhK_kYE9KlLfqYKo9gw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
