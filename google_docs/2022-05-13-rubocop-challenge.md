---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/RVHVRC1xF-lX-yG8rHMS9EeuiuHmgMzL0Q0uoO5Fo9lPHEZttHdcnqHVc6dssYf_0fu3YHYIW6wDBOzL4G_Pw1ktXHoS2PqhOAq2Z6719YLqZO8vKI-3YG-sTu4CjufPmvTRK8hvNZjALIUSTg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/gmzgEAv-HXlTAUMbbwEWE5rApuOj5BOWM4GA9DL-Y9b1yjL09pN_UpLnHdFcmJTvETPHNdiyXXVr-J2ZZC5NI5TGP0bWZXPyfUCwNnmXnaK16-rUSOiVo3HcdGmZATm8TfgHYQtzKupZvKbz5A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/jbFhV81OVHL1iw68y1hG24nkUtdfY2pTUV8dV3tkZd-82Abir1Ls3PuEl8IWjvuJZ9GPHc0AuKeZNLQy8nknl5HVu1vCB1mNnNw-Yviuqx3pPlyr9fxcedtZ6yoa1Y61eb4EuIQOWtfhDoMZ-g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
