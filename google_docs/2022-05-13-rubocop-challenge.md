---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/Zbfp_Ea2uEhzoznoOYUziZQVJ5uyBptlIUHVdts3xgq_yMQm1myzTR0Us5lYyD-cJ8ZwhbAmeeC5ud5gK75KRudG-xwyLBkY6CBUEm0iMImkc7dd6AX_HqGDZULfykiYMknqvx3Sz78FSCnNLfQqQOrwH9eWgEh5PFyT3oLUvNCvN3h570iDdJYhQfhV)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/mMDevOdFiyojeHPDfn2Rv9UszUnB4HAMOFcI4pnwF6_LhFNDrkRvVSApITdvh1Wr0P3oNG0lLKSBHJKJEpF3JgvruM8bLMAFUGBYGelyKb1CwC_x6XzT9zYr_YZTfwXfl18pvCb0ThoeRnMv0J33KjwL8zvuErrGhxxzl1GqKqtraAQbB24NoHfguZCt)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/TSEGooHip1fpaPj-kPncXkAi00MJ6ZrzePJ41KFR-VtRrZv6-tWyfthdubdP5mGjKh62S9tbvNx5w-__J6FFahw1o76NBxkGYnIK43Tx4UAX278zG0CVkYVf1T1tCE0mqrE6U6OYOT6D74jT498uusmkZDR-kRWjFy_ihEEDD-e0UPYQXd6R8sVhU5qq)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
