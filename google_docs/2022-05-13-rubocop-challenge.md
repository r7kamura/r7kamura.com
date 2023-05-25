---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/4ft8EK9OuxhGbQLQel-z9swWts-2P8_x1T9cB77pOVRifT8pioxtcIy3cxQIRrTLRB2F2Xsq_Bd_jf4UYKPRuncmRCWl4c6WNy4i0nP3SiM-yB2FghF1fFOCrKhBzaUM98y2zMyZHuUXjqk8ZakpjA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/2PuHsg4aaW7ifhY0R4mOSQwdQSgSvUs2FUVr2uEsD4-QGwmmMDOs4XRYrmaDoE7kbg33Rfah5yRmRNS-X36gPO-0TAO_rmc9Hx-WzdAWv300I6WwDZSPq7Lx7vKAjpVRSh_pQDE-xQBGuJ-dvWTtMA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/z-NyzSs9kZzharfGQxsUqDuBLzMmQbJTuNMBFgCnjBV-i9DoR0NqapNkE_59sD99qhZo6PdAOksapp82X-tGbH2njZaRquOjG5hhIgntybqbeW874OvnhQvfvlPu5WAMG1ebsVMxurQDvLPwSdHEyQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
