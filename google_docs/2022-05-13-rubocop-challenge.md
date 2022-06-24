---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/bMTWsfOMMjCg-9_oX7DZ-LdAHPNef0YMJ1HFQMSOuMbIvVhKK_JKE8HNVU6TQudBqFVZQNix8s2BJYyYloXrCqADZOu52f8UKgjGpHDEU58HMgGc_t4vigi8E6nWt0rPlTykhtDCaENtvvmtuQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/s2Wfnrf-Div43n9-s0H8CLXwP1bGmvYKmhdrvPsB7gnHIYV-oIHGI8lePt4IRLjRZM-Dtd-8bWqujESnFjFNAG9-zz14UDmkK7Uc3gb1nvMYUEnw6ryQcV62rT95_9OKGFac2K44tZkgjuku5g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/S-uBhXequjgWPda6RMz_6NZEaAZAnEN4OXYXG1k9iKCX7sZYVJQDO7cusDJqpewEbSX0mPoALuBJ3kJvP5LnfnmOGThVWOsSIsUU_nqezApgVsyQOvLPWbaE6dZyJlpekJq4IQDrpNhaqNDnVA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
