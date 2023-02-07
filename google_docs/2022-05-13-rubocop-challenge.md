---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/VX1-KmKQ3nHg9Qloj6tIGXjB6rTsihgViY03V2UzGS_4MJ2HglucWvLDXaLQUiZ4075xpwv2AdKB3sehLqXM-naeiyD8Vw-YGluER5vnsIkNp-YMZQZQaN4ac9H9WLQmrD553YeeniymbwL3UWmA7A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/rhCXOGB3z5lQysLRC-5a3yOCrH0j-SYtpmqLQgsXm-m4EvypnRexMuXgraMnmO7Dl-u-JpNGln162tufjgdux77rTpINAv98y9vdZv9sK4WN_N73DI1Nw12r8mYlxRrYr-Vo6zqi40IN5VRTQQzrmw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Ugy1bJjEgeOVqK5Nu558WA5fsKqKNHZTVoW9GWLbT48kKJjGm7eiqNAHFReTRHGTuDf9zWXJcVZdBNKsRi1Aq_KHXJS4spTbd5L7c92qUzZyk59WkjDinCHTnJjZ2tLMCSNtx9yrwPYgA1M-_8e7_A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
