---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/lFuImU3Lwuia52asY5sL18fR7s8ucG449hsCQIVyYqN2e28b6cFHYQpo7W_T3gLYetJpqmzZ6rGgjq6GtKpAA89ACC4SZ7v-h8T0mAz5ReIOSEKIawdmF215mmw5_7m4-1-HvJCdweZ5fDHuqg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/C7XX_6x8tIiIIg_Zu62t5oSzHYmtE5HH3tc97Y4g5KHIja1Gh-2mcFWo2_yjlAm2f_762Wix4DzBtURAoMoYsyvJIHplyl7FKCh4O5IjslwCU8r7jcekQoxQE6VJ2MrARNLBHyCJivUUwb5CLw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/RGPaiThdGKJvpM3oq6ABIX0M2OZF6JFI8TxvjZMHDYpSAQSpyfEuM4sHhLfV8pSPRJOME6EkAM59UMDbm_W19KnGWXPXE97w7xbkL1bXwfC0q0AIBQWP0RPg-oZ96gmuipd3mOR7iRHGR6HeHg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
