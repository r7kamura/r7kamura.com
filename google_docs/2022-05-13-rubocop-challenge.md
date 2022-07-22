---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/EFjt3qzRhhmlUC6MNKOq3UhQKCJ6H-yTQ6c604JhI8V-obOcXYUUZn5mdLVv-WlFw7jfybHgCsYFXfLCFB48aZLM8jiNSlL-qlneVS_m0FHfdnf9n0wD4MLqjmnK7BlUWRO1nSK0bi46-OMTrDhp7A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/FgDa3pnvcwfISIZJe1rrx9FhcMFCV8cNqvIhRN35u9S-k-ZsLe3gmQP1GX4y1b_OK1M7e2Ka6xHiMX0y0KjK1fEPWL_LwTYOuHok5NQ4FAQ55g0_C1Scy8InJYQXvRzOSBUMg264rcYuELVFz_-UMQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/2oI_nd0sajSaX6SecjqCi3aHxaEsyE8q9zb4TCaBTNPAmQPc7CLM2i6nKky0U7ENP9xzWCDHxhILmC_Xl0Of7uUiHKsZv3MJv_Kw5sdq0FKqSEado82u1gY9V8roPmbVqtYnzjNC8H4qgAlLCk6j2g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
