---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/QwBuD4KT_KEszY4wnN5vBFcKDcvA_xo6FYMFboJ9XiS3EXjueBEoxBrddwkbXTYzp1KAhZ6WA3-RsvMwmRMElaOutnrDeK8_VgqHlobSQLFDwOv87J59icOu-ZPdmzv_yIhsQkhdR_YLhnm75A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/DWf-RCJdQnz4N-3ZEO8uVdRCGxOx9f6REovMxfA55lpUAVrIM4cju_VGwtNwosuF5of69IQ6TKmicBZJXox75sIRujNFppvfBeofkVqaBu5xOJ-pLaZKJCGtY7J94h0gpD9IviXCXbTgbdKPew)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/CJwUHZD9UtVlgnV_XKxkldfvAorghdZJQ9BYYi1PoPRyh1PGceeeeJKL3_7vUlqefZ8cixm-pgPei-u94gciwngMfimLCg_7BYHZ0Kz35NM8ckU2Vp2yJmX1mISwKDAJfhcUC-YpnK78i8Q3lQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
