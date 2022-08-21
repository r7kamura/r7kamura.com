---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/ZzjOXHVyQsMxG6a5JBl79p6Q237do8m4FxQc9IVkp32LR4dDM-c-hB2Xq9cG5UtR_1yJfV39TuZQ_Bxh_ZxGZKTgXyyMbWxDMQ4LZP05cnGWlCbREDqgCKa_UcpKz7-nt458n145sqnrkykxKNMJNQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/LT-88VHytj9JfzCuUCWtRwwrBuOa4-k0A0q6OCXU6mfz_zdl2wirI9dQyTiy3Fh339o-5YNh85b29KH1Gpp6ji2T_o8ZDRagQF4n4A_EdKULBNwo2yaB5BM02wOs1s8ecz8iRJIS7dZU_Xtb3Sv9Vw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/cSXsH298J2vZAnb_sTlNWaYKeJnF65g3beev6ZdjkuZ0jm9o1oN5Bdr4HAYMACO7yi96DB0XzKmc78-tTH4b_CXzgJngae6w79BnwgyG8t2h7RxGewfJaIDvtwC2qCganlWKy9j70MkBJZBKuZvjAQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
