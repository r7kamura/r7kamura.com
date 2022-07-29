---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/0LYpO6EC8BCPL4wd687SUJeFibxNlkOY1aDI63zHcRtNy4o6y4L69qkIzElM6IWoC_Au-qqyH0XCebknZ2udtxcX2zqxayMZi4Aewe10nFL0bq46c7Rs0f8paut4-AoPqk0NjOP-fgvVISeLjeBpLg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/UgOiSEK1gtkQ3zFytWYmzkgQBqIId9isnwmoHILytv1TymWrOedROLcf0T6c8714GXCXVbgPZxE9mdNaRvtClOoNf1kgKPcwsytGgIdI_3jFOVmUpWEKUutKUCytfZdJa_wSzTNLsZQizzpFlbyRmA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/DJ1LmQnH89ro3CArKBE3aY-KG19sdGrravBnYhn9BFAyoIyC90MK3SIEvNgf9cMVZKWDpPn8Y5A1ZJP-pgift_18Gyyk2MHQ3sury9QYvK3UGV2HJzgGPSwyBBg0_ow3t1s3F7ZXJ6NJbv2BOBoPPA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
