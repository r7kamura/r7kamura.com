---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/OaXsIZa7Ry0demGQw53dLGa2cXBrIjq8JZPGT9cF44k-Og1Wr-8oOYRqbL5hJ4JFAUY0IuvD3qCrf3p9SK2OpaCTaX8KlttKGGKUheI_KV2Gq7PMpUUaSMKi0VWbooyqbdGEqHDDjURVUCjpkYBw7fe-EAJaGQOtvUoL2Y-89rs91rlZRdjXrDBk)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/oqwJKBGpjgMf97yKlxiu6_hwq3URHChKw49kSFF5vdbkCjsRFqFsPGd0z9N70U3lJ5lTEfmyz47oMTNNtGgO3W0iQPt3YNZBQyJNodSMvvKZgdOOET5MX7hJ0gqmYoigGxVA_lgxCBIpAqQ5tFAaP-tA_Ltnjcza2Gp2ASxWlIkIwwJb_j66v_Sm)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/3eXeIc_yXdpHj8-6WFWUIzhrvpT91RxQIaMGZVf2eIEEbx6QVRwlP-2t6TMmzEgcIcND1um1hRUfbrdOywa5cjDyY8COV-bnEBh9xVWqb9N0kj_JAWSfDLwpTTQKqeQKME87Q4XlgMnaWbDv6BITz0lniWudALqZ0IFQmUPjLqSzlennyhg4svpG)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
