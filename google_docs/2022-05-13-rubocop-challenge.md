---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/_5VpapnYbMZuROhFKcZEo2sSgsq_VRRbEkuVuDd6lD_7dwLSDUYVffX-LkG1T0GApt4c_tajOF-2KOK82HKEbAR7-7l3AcW9oAeL46683FiJckr04rVe13oCSvMJCB70v0o5_evn9MRozc3VLw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/RoxIcZVxO4oMYCFlWJuTRhCCNzlPOclOfF81i7LMIGQ4dmU7W_K-ATRcToLc51vyGMZJU_lDFjO_jYuacoogQ29lZ6hfVtTcEDnZSSrZwaY5pYfEtlPTRorMiHINe4kyFZ6R1Ivsd1z2BFF4sA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/fqtI8AtBRy-r8TwM0DIaYvokuA7H77hIsx-yEe7ZbQ102hT3G8PEJJx_-qNqQMmZvJNHESqzUfgZI4JC4I6Yp9dJORnfYtH15wVhdHd6xueGEWOUnOjKXeFRbmL0nWB2B8lHFZd0B4V6pgc6CA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
