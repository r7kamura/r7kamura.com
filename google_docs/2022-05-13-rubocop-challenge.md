---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/EqAbT_od4ZGgYNSKYXzk9L_Ny9g_d0xhfzOqt616AOMsNIJk3TCpC3xNQUMQB9I8C8Sbfnkt9mEyS6GzAYdU2vf_g5jc9rL9MyPlexVeDQw4ujMZ7RV9YIEnrjMhE9nAw575kLrPV1mavctLgQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/mWrEaTB2ytsrma-XfOKx9y6CeoNb_CwupCrmQFYQFFvSYH83DRnM1iLIQU0tc4--Itbkse14zjkKjwybud5vdGzCZgwwTH12HvNFppKu_f6jJuUZfeERCBhJs-JQMoIo3-HYlSQNpcAOj84BtQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/VJJOnymi_eNGu_3_YhxXu7ib8fJDYoL0abQsjtSYqezyO3PcZWQsDROyK-rPQV8o-RkK8qDazKNckGBOmXkdXcO9X36T_OUXtjoRuacecXcqvN4PGAetN1jaK-i6ptTOiJtdg0nryrvN5ky2-Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
