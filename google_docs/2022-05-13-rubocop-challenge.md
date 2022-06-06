---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/Pk4N_JHkwMH-FSHG-9dkuETbRYv8MNj-wu1rdp2tdUT6027UFkBP4DWbLK9pK-yBNORZDJvqnI8YxJD3GAnCec_IUV8RpBDp6TLC44g1NQooMRuLXODJ5CTRscCQj700AsYLXoVhgLrglirtpw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/aUBZNm21uw5S0KqGq7INg1JLLvssoLC0ttVmfzW3hAyLw8hId55dr385H8A85Bj_vM9J0NnJtrSj_XDl-633Gyxk-GIMixYAVTS04Nh-IYjfOctJesyAWmQBzachfqkTQ_8H-1X9q5DS6vDH5Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Siht4-SUS88F6lm8Rf1X1xHe7H0YbMmt-TetxC61jCIRBMDjk7q2E_DQgE523zNgwLAbZm8SdfR7MZsPFlxyhOqIwSr1W434GHM0n-BSENHMhHenFJpMywRI94KTYoOFeWcQgn-14WPPPwjx6w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
