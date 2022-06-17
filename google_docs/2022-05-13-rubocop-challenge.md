---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/WsqsXwL0elJ7rFBWEk8dWRS6qGIbpwyrkIGtg3cPT1EKMzbMp_F9WTrvKKshOepV1f--3C9BtsP4-HEP8U_WI5IZ8S0GKZVs2z9hvBzERIqrZF1buFSKdWykZ9VWrn_7YvTFEq47ZZDzkbevwQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/c_IOpQiG70X-5kwdBGSo2tyqXue5cBtobAwLy1B2oGuXpb7-4PziASzdK7Y5rqZkI2u1Q6EX8aJjf9zszA6kbYRIdQwfHZ0h9CgUXit4Jijx8v3mAj5ViSzJqKhYWYvAx446_cx0upTHiGFg3Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/k3iCCKVyyKWpX2-zdhIJV2kwRvujRe7PoaHDuxqfd_sLcOGVgxrKZk0fgr6BOsYcnEsTQ32pMhQIWIwM-8Arm2BsN57wTt1-rpFVh8NnkOnkvsU8kjxgngDPib8YkDcWNlV2PnnYz5FGh8xwkw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
