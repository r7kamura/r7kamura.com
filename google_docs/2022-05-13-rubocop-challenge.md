---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/feHlvwwN8WdTbfRT2bpYhfxGw7N4lrjwbx3yeJVjk1E7vgU2Q1Vj1L84oN9Pq6NnsKPE2_IllXm17iFRG3luNYF95IWwwxRlnBiwON-N-9ZouCU5Cgls3_qPKGbmj4gdXeI8e_l-DHISWlpLaA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/-tnLeJ8kYLqkv-jInDo5ws46cecKCl5JxY64-1ldbkOUHNPgLk07Ke3jfn1dn9WKajNPJozjHnmb1gl62Xd5Ec8LtM0pd1U4uIY_xHS1680IvQ5OVHgic_WX-F9gyYvIdTGna7MTik-0Bl0XMQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/M6js3m_PVHqaaJiTy7ZJpQSJGd1On-EttbwPktC_STfvUn9cBtieyMPT2nmG46s9DXyuLfiwr1erVYKDqg4ehzwuqWhjvDVvp1naXcA5I646vKEkvexR51L3wmuk8-P1uXC3BxRI9bVsQo2z5Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
