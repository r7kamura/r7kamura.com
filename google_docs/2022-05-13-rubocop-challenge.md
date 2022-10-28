---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/3t-jIb7a6GkYMWbZLb_hTA6-XxAtAbdUh9ddLEPE950_pnnaVtNmXLnUGkbblZQlZEyOl8hTSDIg2vXJsmvcTNJinl9uoQliUDOSPC5qnxaloZwk0nMs8itb9CXzpTW3yuwoSijJaxUAONerIbyyg7fsJ2dk5B_SZphijnSPObnDveTLTKTZrx2U)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/Hu1h4107SYYPSXUbCyDOzau-HkycbgmN4oRVuWFSW-j-HUSBANTZ8Ol9eUXVQTdrK0v8o7tVX-qFoSz7F-ccy1kD3lwndXbfj7oQ6jKhpmTrzOsk5WKIVaEtgf0lJpEnDfhWMAXQoFubk4T6hLyHasfqkJp6PSQwoX6r7IeFLwCX1ibNAdxh5p49)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Wgi50xIzTSAF1N8Mh5zajPqKJMBg4MdDxMAT3xC_tV2n2QLr8E2wPpzGVkP-qIMZhB0nBxcwc7QqiHzIDm_pKKlsfM6kpS8mXSKZ9KYwvduKS5MT4kYPYiAxu86nTy_NJGDrhhkrNhHMhrChtLaC0h5X-X6n8NjuVvEUvmWGzFqE_3UOrloTkVwJ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
