---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/RWvEfi0m0feZfx8oAnEYTqIvTbpfJlTdu-rzIZd8aRNO_KRA3Pqf0TZ5uYlU4cQWlUyN5v5QnRWHPyuSTVbs-qfFJTbwOQ_0tJ3BzOS3ZwS1x1SbaREQ4LlBHRmrbnnjuXyxER3kBpnTsUhx2jWeZNumku2ulp28Xqrj0mpPm37iyG-SWBQEpSk5)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/dVOYfqR2D5upNAigyZskaL14WjuzFUbfIIyz61_1sBzKYYHaFQJpCJh6yhNr5H7Zo7qVanUQSQODSWkkOuZfr-hxHPmorVFmYbnVaInx4gMDOA6DsTckbBxuBLpUIchxINGx5-_YbLmRKWz6tLq2MaC0uXrBTvBAd_EURiC-G_WG5977MDV03ign)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/eG0mnZbU-gbObzAcpdrDM2UivB7bdqHjo69DsCPy3uA0ccWJoLnQjtzJMNYpRZy2OnPeqPkYO7Y4wdjGej1aGsT6nhJ6BSfweODGxxiOw5ZjP5dSDoVc-YAl2ATZAMAd_SmvBrhjeknzPwUj4XcaWDy7NW5tETuqvK71qej4bb1nJvv_GhA2vqfo)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
