---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/C_b4CobyZEH7pm71E0vKFZh-fcIU6x65MfSqtWDpvHf8WAOZ794wevPi2-OaDfitCRr9o4Uw2_tEtgdiMYEgnq7fYxnw4gJGQ3ymsBS2khF6sdQKOiHzA01bTTRiJRrCpZUCtUh9qwYeSN43WI0HpA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/8BWQfq4d_OjTEDxH9orshmHcfspHZj8Bd1p1Qc0-BDPQtAsjLukPZghgyLfyCCULuQWiEQoU9H3R2TvFJbBxBLhBrSkV44TMLGjHcJ8Pqrp-Rzi9Q3SqdoIW2x75v8CQ6LVo8p2iY8mJDk4loFduJQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/4kfMdmCQs_5KCGoeGM9UV3J6xphAH9ZGV16OjasKdSfLABn76MHYo6Y2Im5SUoysbiz8oJ1p7VWsSkkl6k-aN4inpZb1DVYHQHCc3wrGkjT7DGHQzlZZ9cum3k19Huuc5yQr8MP0QcAazeOhmDzpEQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
