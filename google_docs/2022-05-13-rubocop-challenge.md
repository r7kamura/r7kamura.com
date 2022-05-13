---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/UvZfM07nX8gFPM5nl1t1qSKKy5cq7qu2Y0aEKoXaon0jzXkDgp5YLdkLzOpqUE7IrdI5lqReN1x3VwRqWSaImFsNoHFV55EXxdcfhabn2mLbWDFrFknS-6ZJ5Ef7LGauS6sa_pzU49FgnYwakQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/dfWJmcg2046-QIykQQeODjmo9yOUELRcOqH8lxeuYZzWB8H-sI6yZWZVCiMgjS3zNf-0MPE11FTZMCy9jTmkPILavpNLcjTL1sbGfpiHyasNXSILRTTHrjxHFRZ-9avYSgrTsgdKGKltpPuIcA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/3VduajpWCuC_KwUFpVuKgmTWgP7nxUQfiavuNuOZv80kJOMrsTTLA_ENxH_a43E1TCRM9rs21XGkH9Z2ZD9T-3WUeRZfcAJ1poQ_kXQdBIKLJ-eabP5SaQtikcg9E7vcp7w5of_K25kJ-8UXwA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
