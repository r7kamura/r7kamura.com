---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/Cg74bABntPBeZK-BQFFdZmj81fmrcID5Fgdkj0Qw64SCCY6F-2YGGO2ipu4Z7dwgMSD-kZ9oHqPgxuaKQl5rftB4dlN-f9MR-vDFrJERFlgCZB-kDXUCC4uRbFR8UHK2ciA_cREOy2E2mqFZMA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/fbi5YvolrF4ywS3TCsUO_RC5IVV47XFwpFK3neUr9JueICR6Y_I7yFWp2SCI3YqXx1ju5H7CZWVqTPKAUh2m2zh8hDqAHTAq5vrReZRnM1_mL87gOy1itDRWYIdNg_YFSQVn_y3dufo2LI9LHA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/C_OhW90zeX-QIUqAxraYkbhg9voi5N03VqARPvOe78ZNlX7dXk95HW-obh5Cc1zK7xFTSlDw3fBF4WuxFxVWqvaCgZR1TJmIbR5SBTqRqbsNHFcLQ-vH-xPYwGNgzX2kF35i3uBnesS0XM7qyg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
