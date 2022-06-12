---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/y5Qa6_LfzbIcQer1FNIjcrN35Keo5gCGJCBX6uS9upe3c_iMk9RO7k3cDuCiumtRHJzv_3GdpY1H0PAlYN7eryNL7-wCHAb-LJdO81RcIjMVtX4XHKUujdw4aWz3KImFlyvNM7BYn-oPjhSQgQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/kaf9mVi1iDtNudxUjBJ4FOHcdJUJ4F5BJf4pTIh_K4ATlXlS5c61D3GAdRga-rj8N4ZDmlgkLHNpeRZ68dw2aJRkdbg0x9PSIX-_qV4eVc-rIF-3MzQzsNDoKY3bhFuTE3Hrm8u7gx6GOGhTKA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/5D77_hbnl87OuWvM3UueJ9FB7oloxB1cyWbE6KFvL77oxlXIRoEOT6-ocXJuupl0bLKirdcNrtxiKgkwhDYq7UJZND0kH46NnAH8LltzTct3pQdivRY6EqTcrZl9gEXH8p_hKkpIw5wj5jjCaQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
