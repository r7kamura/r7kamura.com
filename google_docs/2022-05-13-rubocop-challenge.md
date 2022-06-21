---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/ANYA6eqxZXVJTgcMeYL1ziPU0lhaX6WtBXwM8jgotePquWUINxSwPybnwlACi6R96qG2oyOZmocsjoaHai0YSKjTySiOhUcuMsazT9MPAylnJOYzA1_cpjbJhV24Pz0vg0K2aYs5ZwYBE-hiCw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/cdR0fGL7ai1ljWxwMU-vAZ8mjopB-Hr14u80IphwgwUlonu2cFKmfgO4xstUiKkV-phYmJcyTEJpzHq6jnaXlJIiWdYPBH3WNLFPz3j9U8GnONxAL7oIsQZWrMW7Y7EKZ8qgArcA8_hytxJXRw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/kD8pVn6rkhsa_BW4ID9I9fkNpOhXC6WI6CnaGaH8O73E7hjCgoAmCo8QrsD2ePL9rZbdsZ95p5nfo-J-we4K200LvW58uoZu0ulzteBU6s6OoY4HkXy_pg23_7RUOL3Z8thB0ykNEYjcQuEdZQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
