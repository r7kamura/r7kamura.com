---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/aCUxeCXIt15mOVvscH5fbQUzD44KDpDAzmJCxXD46hGY471fIG6VGFpYv_pRN3fedna1eU12EIcdpfWWgXM0urNeztsZY6smBqIVAL9lAVMVhF7qJpYeRglmjfJ5QmiRbLNfoGFf68hOjHJ8cfcfxA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/mELCZn9__Uv1RAaeQb_HIeYBQsib7IRUxOAfjLA4IT8ps_x1cbekiLk-EVCD3ZG75GfJ4Joh7_SUdIaAsHxUh02yVydheNe_l1G1vCzHBN14VT2o3p0cm1fzMx2pE5A_BacVvbXXwNwSl4zTmcePUQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/j4oUeA7CwZVpRvON4Jmpql_npOnfzMg4rnB1c6QX4JaeJ0_ft3VzyvqrbOFQbtfy6QNx_h-ED7C6qigB1Puvs7DYLN8A1iPXYwxbExuNfPcZiT4an7JerHtLl3mmKC-uht18HQFkGDtZ2AAbGx7kpw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
