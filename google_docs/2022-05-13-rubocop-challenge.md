---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/EctCjXzVOoL1WM3NuZz9PWb9CSs-TGAl7yShRuGXX-46vNQOE-hs0-7zkx1Jq-HrIib7btN7CYezdGIaHXfv4H9B7iyopZgsVKrQaqQaPIc2XMc7ZcYqV_JsBuLwjgXc15IoxQrVYfw0xG7gdA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/PFNmybT0u-_ASVQW2sfYO0n_R6jjWp-c3MJFDaqFt52g9IrIOICFbyh8CZvjS6XDkDII2s_srRz8ruh98Gi1xbTWuTfMyQIJS5cneYnaKx0CmbZczTDuWd6ft9H5NZPXJvaCw_0cLmU3LQMSxQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/ZefdYJ9pQkFhjVF78907VlpHIrar9VrukDZIN5MZNhVs1S2Tsy-HQUBuR_kaGocVDJF6Z2fhQDGYYkO52IY0ZcJaY7WsQ1Vvb5CTIRZ9VxZb--WeJEaGL8ieCYTBTqFNKxepMha-CaakPyj5aw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
