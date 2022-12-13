---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/lNadgujx1zmOp3v9RlP2QbKKIropIqYHmJV6C17VPXxIJroCg1sr7Qgdf7hxleym8IFf4IO6SyyG3ZobCzYoBOMFfH7Vw9vkMmeSCPHw7-FmoD64ZscNuEXGDQaP2WzzwKzcHrypNZvj_8zztlGcJHdHeZf8Q8ppufFsGucD7CjhYlhAxohejK-aSErr)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/Mc-NOvToMGJAp3YJTEnoBazmG-k3Ct1ldYPfPVJBMoAuvfZLYk0E9MgEnxPn-9EgD_UdUUZq2USDPpz-nknNh9PI2aPXrOXjogBo7D0HqhyivuIJYQVywZD55rUC5gh0WGY_Yo2s81L5SbCRLTP9mecO2F228fJWq5CKGZFDfU3rRBFh4rtO0OgKXNHI)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/9YmeRiLu7RoQTa5LUDaGAxtc9dMrQV8ndgo9CQ_Dvfp6VAzW8jjbVBll2uC5CHINBx1l99JLkPvtCkCqEZGfyohX4vXfEwNpjj9FBsd1lFBGs31EPhxjxCoUi4soayWljZMnox9WGnOdco2IUxb8k1B5YFxwYPS5dftfPO3MNc68hKLKu1g6EDU_B-eB)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
