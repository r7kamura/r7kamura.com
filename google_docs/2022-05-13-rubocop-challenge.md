---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/Wp76mC2J42zy5lWola5wbNHP0cPoFnyU2MaxSW-AOl9nHEsU-ZlQZd3wBqlOOSdsYGAuCs1qRtVDdqleqxOJOg1uPYbhT9MOj8BYMu907qn_0Ry4j5ESBiFBZS1Fu0bWm6A7QRXF-bzAFC434A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/EVYYsg3Vba2Jeolv3VJiCGH0M7HhI2xf0dYux2AwkJXcuQLVfjkfQkRH7XNCIAq773nKWdu7BxNRG7IxZbIMBhO2iIlSew0LBoCcxhatFHFc0CIfP2XYuc9Zd8RYbZAMqe7Xa8QkwlSnfGkYPA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/A--C6Qsu9N6jHmrAl4qplKii6YCX86-VkrdhZQkbiPiUQsUdYLMZbQNjAY5j1JkgxvtWr41b1IbFryj_2GQlFI7i3XIdhB2prGls0eEG5mLPSI_9aQFk69MKZuL2qZP8mZZwD5ciFgaWZNQcAw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
