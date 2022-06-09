---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/F5EvApRgyOBWr5evftv9ZhWb7oPU8yM0MtBfrGiW-7zLlPCiT5nYDjwR0ucUJs0QgY-6CubOt-6ZQi2UUWKmEk3nqk3YXAmBpguiNfmcECn5S_K92SieTMZeJI9ITaopIFvFcyi2fG-OtnaywQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/5d89A-dbJTsf8VSOU6qyYuriBYGGHV_ICaXYANR1oubCy-To9PnK8eORn-9G2PMOs5YbpSJHxNzlFLcm5H2RDthJtj0cXU43qxPT-6Mkc0ZissN1aVg55oB925SVIod90mW7CZSDWUN7uXbn9A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/ESfNcwsZ1e3-z78iTxEv7MPArqv3RZBigkzwE4CY71Nx_rugyxyJNwKtyWXA0u19ya4T8bOmX0G3FsSErcZvKGnPh8RL5f-VePc88tKVNYpHqOm6YeZe668PQkm0SDuvHl2sXSqvnRST98efSQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
