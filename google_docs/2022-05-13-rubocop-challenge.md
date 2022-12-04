---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/mbR8vZguXPRejwDIGw9g14gBsNZMoYw_zS06LDBVxIfdHTHXKliq42UQhLyUViAzGMYagapWirDAJtv1yxh6YI-rz0cEAZhCZpC1GwWQSbOYcq2FA6IOMiBP1rSwtw-M27LZmpAZUL-nbHfXgopVoQzmsI-P6S3PF3YA1SiOpFYMX8LYFxvCVPBkLpo-)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/pmY2c-51LfILpgCUw26KkQ10FItBMKIbRB2vxtGTRpJMwFEbYh3xawVxh3F4XP7cD1lq9j2G-sGgDSBWAY-XLae2NJJl7Kz3IBoWsddZxs5bkbFLGoJg3dQ7u3CHmgbMAaeWy0T_-kVABLRS1dUD5aymKlQWDEn775k7eR8RK7UEH_BwHjFmoCZXCMWn)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/fo_1Z7sOomL9zVuq3N-qyq470Q79Xo3lMP5Lp6-hJH324FSA_vXsuahyyfvH9i1zZJ-P3VIpxznYvE1lGCcMROeXeVQHYjeLANXcVVReBwx4cHTJG5CSnqMOcC7HRJTnrBZT_yj2pTAjeAJRNew7KJ4zzcwkMAY1F-5tQTK0mj6mzmzIE5GhZ5J4JLAJ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
