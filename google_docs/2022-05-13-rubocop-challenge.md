---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/0M5vtYVdH7f8zAr2f3zE_HRgLqyF9iqoMFBuPDjNnpxmEV76rk1CTDr67RqzcVIkyOjGYr6LAmswkNfu6EHCj3dniFsfgD0oFP1iQZ0bq4rkWAi-7294fMVMQKxw2sNKTlGHW64X4CwB223Hlw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/yKW5szSBASgJukFFS6OBVuVlih7xMHg_H6v257zwt8b2-ftoWqeFKu_9RKeRCPkmUBuIEgbD_iIlO2Vh_6K67kdXgqTgAMGqeWb0j-hd2msR6Qk_Ji5V2SH1DYX6HjXR8B-ZkW2o9GVBQ0kX7g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/58eyl_2iAwIBda3ZTCOxZoVGhHIpgZQvbTozkbqR7NIRBZlPYtYHj_E9MnuWRhHX5hZLaUWwTYBDbcTZhnrTr2g5tXuQYwuiZg6FBK3JXWzjfnCz2HSTEVYxTj3Hg4Jjz5KH_Yrnq5xrHP851A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
