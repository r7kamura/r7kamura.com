---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/ezQ5-E7zAKYhbCAVGnJWGD9Ltp4kQcQJM8wWXo-sBxYT-QPzJATC1Bzgh-e9aWm33SV7CeLizVlxBjk7I911-noJKL8w47P1ZRP0U_hu0He_OqYaDNwY04Hgwp48WFopJhrI1mnUey5Pv4Gdl3Wc5g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/2n2Vh6QDwBMh7zPNTyhK3YheIO9wWnE14z3nfA58JJCca0nyv2rkjgPXuBNLvjMOwIPCREygnsidCmlI1LmalkDWYUrISVumxd6Rvsg4QzNfYJayYXuBiPy9fcdFiVgtFbQHvowyiTpQq42WEp0uCA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/4SJg-A-Yc8CwCWQvyzcO2GiwgW2WYbtpQ25B9Hqn3AZejfx7x9Ni5t6GHn3YHiHwnU7ANFP1lC5dkIlGKlyC6LexytgSfTIOi2CkZ1WcYDZHnj29EDLsTisAkEiyaK95dCQ0q1cRQoWoFO4AV2kOGA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
