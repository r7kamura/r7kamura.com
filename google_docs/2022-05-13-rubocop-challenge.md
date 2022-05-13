---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/xCgdfXuY4makb_ZhXM2vDkszT4O2APdSwDUCJMcwVMLYWzzonhMqjBExdWg3GRHzwkWCqKo4y9GUHqU9Fku-EmG0qsw071pZzlRJkcFzZVSAjIy8Mr-5ht1zo-ChRxc3m4tRiHn73PLzSkizZg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/4OYYPObeHs4JbVkW4DQukbKvRs6niYw4bOPjDl40WhFriELG2iGLIuhdoh0BEWK18FjB-8ynIjw8OXmxsgs2jOvqbtGlQ_yaC4srFlvpX6AUtSDIKlhJzF5zo0P7UA0J67JFWfblkcV7YNfCYw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/WRcrpe7YcnkLWDcQSs-nFyXDvSpk7H__3vJNxvEJf-HeyMiOFnwwZG13VrEf6WBOOqCVBMKjsMuiJeugsUWkk4Pq4GGyNiojQM9ALcQ_8ZdhtXEno2NIc3qrtVdHJLQKdI87Kxgry6OFXlRsdQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
