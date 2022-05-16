---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/i8VBDTPtej1ODeDFU6gQ1d2pVSyh_Q_cYcXh_6uTp6rzYB9hA9Ys9zsCDhi5betEch04rfMmQp7tibtdgguZVjrXBqAtAh84ago4CjeFiK32R2hJiVIVvzXw6BsUHYaffrSPdZwPi02BiJNd4w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/4akrJXFb8bN46xCnnz_bPARcUPer7kZVBHwezsf9t9Kt6sVpvJJiqJU5HD0BBmppaIGm6ItmYtCMCwt_t_pGkAkcj55wlYFjfd4-k9B-Y7AmF4Ioa71QgibjFw49loRUzsQsJDbszpGHO3hEJQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/TMZzHJXAb4_RRyWo9WukviaT_by_QJE6oPJp9ehkPG7G6gG5y7Onc61Ql8ovjmPWEqpSC4muDuhx9XJX0HtbB4hB8skSd4OC03VvXkTNxgGRHNfTKA7LS_n3vG2RXGdZpM-U9jnINhZb4P6f_g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
