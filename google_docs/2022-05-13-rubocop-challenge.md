---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/sO644_nTB8KCrdi2lEMyfe4HkwibaqD5DVRu-tcnm6JnBcf80bn2rVGyD7eYE0U7MFTIek6cWRLzF6ENt6WHAQEsJq7KHKr6C9QVtjpTcOGJwRnV0Li3IAfESagMSYhkU2wyqo9Ua_gBDXUmHK7scQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/I1r1Ke3_8Xl-mfJrX_GLDb8dLklsJXYZOrTkDD_lbAkr5oCrCRMmNcjC0e7dwHeOqVSQ9Br1SDtJ6CcYC28PP46a-s-l5aefQzfdk6EqnuUBIjN39_kOrTr0AEA37sc0Pn8PgHxAbe99tZ-gq-dvfw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/vKoFgAt0oNOwtWLObEb704g19O7-lqMLVq5HjZAqhB1kw0k8yWnXFFqNi2hPXy1hmfK-FwWMqXR-Z74r--X867obKZb-acnyFK-phc3TZNYiReyJJrzPv_HDG-QcZTcjmKrNOqBCqU8bQofxmdK56Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
