---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/8ffbcOeYst972Z2DpdpcHIMOxkK6VO9Mnguf8-iZe5Y6Vnd7m-X7yAKyyz9FD8ZM2OfosB9gEwzV1VCeq7AjZTF6opFDN5SLUJ18NnFJrOPEByVFq1Rp0kjY0iAjV_0w7CjjXlSv4xlb8nfPcCPgcw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/2QkYDZafwTO9KQsVk4nnfgl_To0JSIXQoKa1F2-TfMRVPMD2JkmFXTgTwtWrx6FLdsUIyQqUTEvP3ubhMNAAv9J8Z87Oh67XPt1G8TC77tbbV72e4TtwQI5golHfQz4867GE9rsVqxhoJcOVr57Whg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/sS8Y3nNedwEWmd0hUiZVJz63x7cAqS9d1g7O6S_AOnQP_9mEPfs-e6XHN6tPOLqXqEIpbAt4bQpRAao32p62fBUQT-SlTc-D8DGHzcZ4IXdtPizQ-V-mdo3KsBiIRT2rhdSV0r4iZ6HOzBrmC2S2ig)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
