---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/2I2RRdIlvGFdXEk1JD1AN6MSzv6iIs13kS-XkkE9DUXvUsWrFhV31-JPzu7qF3vpP3LjI7z4PDw6oPyOHeVeXxml7JTp3ROnSWp4olAsfZ0vi5OO5jObiG7X2zKOcoLjlbPrKNjLKutoM8-wpA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/zUAQ-8E8Kvb30PvwqD72tWgZunk2vlaG6tbQT8swEr--dvhi7cR0UIzTIs8G_a-o7Mm6J51BuefhEORiy6_Fat6nc9frYiw4gV4t9OAGRLdv9E4sd0Kd1xXFRVN7jUnxmAUNTPeEVbOi_1j6YA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/mHK9dP9ftTREhZWGRNG9FqLvCstUz-57A1mzfhgSSKnZt_HuWhH9fUSu5vF9v63y0cX2hLtvyfoz7q9OR5iw5gO78X3cc6fGP_pGZ0AZTkJEOIrwNb9KZgVEOTl3mcqNP369kfM44t0YbT1MVg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
