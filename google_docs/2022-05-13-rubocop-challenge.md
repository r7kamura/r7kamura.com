---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/RRqSzBcdgB9q1hxSRPewZTDh12RorXb7joCxh8Ah2g_Aks8YWhUIJ8N17KWEXBm5VqMi9g2sLwXAZfEflJGmLvy2meVZeV68Lb6glUwP-dMHqBaql7Zg1NkCdM1YXQKsTU6Zh6mncXDDXlUXwg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/YkxCIPrK3VgOfIHYVTpezobUZjG-kuUgQ0Ibr61EvMkcGYW8NsoDCsB_MJQDfn-GTEPCUzLAS-cWNGkNPmHjgjqS_tkpk-0_PTHuwVcxjtnD4OD44V3_JZFydDXz1kyrU0VBOMAMvhwaFSIOLQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/jwfETM6s633nAJgTIALmeF46ZlP2yfkqTfWC8nKpMdrzQ_t3LTPK9XsRKzgn8Afgmpdnk5ikoXDbrgANFEw0qafvWWUIwhLjuPcUerBdW2kvVayxEAtKk7qvHqhPP-ZNtVl7XOnNSFWmIfn7Tw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
