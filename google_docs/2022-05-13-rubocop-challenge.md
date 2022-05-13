---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/LcDxNq5M1YoFf16ER9qitINKJwGbQMHa-hfNUzPW06AM0fu8n1ps98NfHd5S3NDqroasrhVdV1RiW_iIwRo9r-6oL9W8m8EXf-twRunuaKD3baMPyoJkvYxqC1sLtGFadehnQ3fqp7b_Dpd4jg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/IPYPaR3sctv3ahmnIKXHSWxtYPWTAE3s5fysDtHGjveKIMpnFUwG2Wc_7HMmWQ6PmFCdGpR9MxjN9Cbx8YXytUoC5BIvV5QD2drCLOeSdokW09T5qlJihXMjlQgC3ZxApIemRqVdw3EZBAAjdw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/KJtbpFKCZtMu6Q5S7J9U6clpIMd7GLVRdttex-VqMZkVa11olh-0DF8dX3XyzBkuJQM9xssuiwJ2WLS5uXpLRp6IV2uaW9-jaL-44D41VvrKpuq-YweayFZo026BedrHSaAiPo9CoTO-PkERTg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
