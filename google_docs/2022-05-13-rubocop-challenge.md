---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/CijhqyZ7PQJHN___C8OE2JdhJ_HG8YHoest7RoHEFTnKZ8FtlSrT9_-R5IxRRRRTRIloVfllGzMqBdNeOE2umkMOd58aAtRG4wPvD1KUNP3qzatJ-6HjK4m_g1s5-BlHktA4eKrcgSsPJcqMvw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/6zAV7j8AleUCL6CzJt6RSvpMZngdXrZooLiVe7AYS5FozAvT5ZmIrwGPYUBrs65VzbfzMuwGXWPyE3oCNcILKZXzqSy9OQGkysDQ3FMjARMBMoMt2xQkV-438Kf52dQWJQ2TMCFttnDFvEuzJA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/No85p7xKBmrrgi9K0IwxcyaoMJI6_3ZTimhsWX_DUcBmShwN7-KQSpEb7QpzRSWPS777KJ-JLAAQhlvNGa6KNOq1zC2cSgn2hPgMIuLav87ntK0ps7igeln3sQ_C1ee2bL6TSzeJ6aN5MKP3pA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
