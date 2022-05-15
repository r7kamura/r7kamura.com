---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/GZqsaOv1LmUzIsyyAD8WXHAzDAVevpnueM2tGBsQDDCPz0miacJNgXR7d0kb0tkGTs0BUvUAR3aZgDwWNPVCoWGa9sI1sHGfAzscatpMO9ChmG1bab2BjC3sjAE0LPvStV7groAUHbOMxNlrrQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/_3_PdoatssRhCkKfOfp9E2sKeZNM9ZaGsvixYawyZJDViA7751o0rdqzXf8QEoQuqxm_Nao_YoYWGv40WgMQc-ECjPwTPROHRK1bfBZv2LnALZ_5qkKrA82-t5reDvvB4jvlgR5l0tnxJQ9QWQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/ELPza13TO01dRs8vOqOCXYd5V82-Gud_Uta8tsPQea606kvZHgYyokZlmxbh_fogcnTm3AlHOCs6qu775ub2LPbFrpJ02zii1Hgd0yij_EfDgSihN0qOIxgqLtQljmW7zFD_6MQpr2tJw39rFA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
