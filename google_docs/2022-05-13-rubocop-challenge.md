---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/Dybiq8j6mptST4GKMSo3d38QRS6GOLZF5a3Xd9t9BN-GYO0pWATpETwZFXNA02I-ViDuYAzS0_1kLagZ_Q3cfHeVAaVTm-RDwJ0F-wlJcmBemX9ocntCr3waQ-dOWgzHELpj18rXnWwM2IgkPg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/WdgPT_vIYhoeZT8tkCtlqyJQ6O-1leVhjlY_5wJp6PkkAxDbnHiAawkuDqwzYjjB9a-nIiqBpeBCE-DIUxr4YCqiR6l6YhFAfGcl4dc0oZxzg9aMlproXc9WcV10wiCsvHPfipE4owK5mYDvGw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/FDxTJl-9nScdPMvpRUIOjYhpuDJXGvAhdD4R2YJGoOjMlckc7slMDpF7pZHyl7O0el1Ss-Fx_Y3mS4hOq-jgWF0LJWusHhbpY8O4wB5_vYNK2CrX5QG56X1cMSguSbD778alVvVErcx3KJVf9A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
