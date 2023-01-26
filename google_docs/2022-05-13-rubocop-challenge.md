---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/uBxfy3jplGRwFGmS6mxHm1dnLKxwQDgqzaWTNCe9Ok2QCVY-9obhDaAdNG8Nji9YWx9Pjmhb95UybYP6i8Zo8CJyZCMzd77DlC-CnCLqoAKs_paJFsQz6wKmyZYtY9VJQ1ZFwgce5TVxeOWTz3ccwP0RLD-XkqiOq8GlnQIL5cQAtxSCL7jRTRADontj)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/9Y24nAFlt7bk3ONWAPNxsP3Sg-TSksszPe0e9KKTNsXrSBPhhrpx0QbJNNaZg4f8ZxuyeCBlLrjL7BOgCIgmkuoGGDQc3I9Oyo4Y3qAgRn2Pt-O605fwHgfVrnKJhnRqFBi3t5GPnoVi6e4Pc8NSA7yXkQNk6JH7zOBaA6xlDUgbFYL63un6xLLCEGBH)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/A1ami4ofY8zpGK6go3tpSra4KHKkqrq8g8tQrGObs1FBqt4BhOUd796qDZszDDo0oUZQCF1Oj7ODibfkWm-E4lWBpSfJDxxdpT85oLWia4CtHXdY1x6qMMsyq7sta_d_e_tVjvEfId4UmZxiKZoE1cj71S-ajLAnplm1hvZFFh22t6qTo-AaUP2icruS)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
