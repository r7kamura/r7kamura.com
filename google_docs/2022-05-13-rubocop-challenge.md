---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/eGZTl46G5LB18iTzXzn635Ij7PWFRkHAFMzUwuMWEFOoHQOevLqm9Jmi0Wtb0u3r-XSk7VU66S91Mt9hbr7jDcPfYQoCvGFyEd2BfBSPwHZWdXOg3CSdjJlOziXoZCKpsfIZaJSA14EQmcRVaHtreQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/l8x02xidlSu2QIh99EGUz9MMHS8u0jj-nIWilyCTmAY-8QiYFBGvjqHZz9O7LzzP88B2G_3wk9uVHot7UsMDyjCO6JgxrVsB9ali-Rhh-8ZPY9jF1-tfemr17Ceq3dla20MBEcfHUxtsCZk7WXVrlg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/tsyhnrZO-qYFHxDoxzHtHMFaDWg2FIbciBexVORemw6YHH3SQtyKQ8M7EaziNmMNlLiODdHg8fdf63DvoGJl82qOSoDSUHbFLdKwgOk_XEaWukDMmS6-6aiNXU1SI7zk52SEu6J3fOiFdWaXWqFsJg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
