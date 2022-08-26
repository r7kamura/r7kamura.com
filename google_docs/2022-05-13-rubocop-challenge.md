---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/v_gY8S9TSYjmpnYSg5wd7cF_0PE6GfBvhZFtZp23YWC0wPiqAIx_RmcIwFR46E91xjlYPis4qTpec9gj0TF9z4PdEsb_oKDl4LmCbxgNorfPIJm3bavpo5c0ra-Id36ea2iDOmzv5n5-5Qkt0m-RVg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/b24k6j5etnnT-uog9FNbmlxC0F9DqpIMDih4OvwcPxckMODfb2AEFHJF13HODyfAR28YSh-VbD6jdOonmxtJr5pQohV7waJLjz0fYQWv8F5-NLrww-nEz_E5x4OmphXg4cCAoIA-hdx9nV2lke9fhQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/2809_4uWWES9f3hQwLTvUZc0UxjwOJtrr4BBhUdaPjbq_uDwHlrfz-04Z7Y0aTmDGqeFd5Wc6sP-L6QuNs6yvtupPcRN0AI_NxFoOLeP2F3zGNr-JCSFQnAApXTba-RE8QnhssowZzS1iZzHHojS9Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
