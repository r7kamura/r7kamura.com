---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/vwZRfg8nCgqgCUaHrW-ahk5WsCSkkSSgIgwLFkHY3g2Dpfmgo5HVZamyp8sYhu6hPlwG9RJAZhVTYjkUeC9cHfA0g9mZQNCgwRJI9FtUv_y-zqWbUgJK9DAU6ZZMzUshCESerRoaS03EEVIkGw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/FcRGilpY-9BfbQnXabYi-AHzTQwEi3JSf1BJg4bvqwlungTgAwlO9pwqpf5OCBCOOamfxNQ9mkW2uPmJUeUzOYfnx-q8YpJN5uxoSAeVdRSYEGxF822bvfNUotXMcIZEdamTDQ6nxXVP1n7ZOg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/NX9dfyzcdenRyX_R3NMX-K6mTsmWa9GBuD2AobfrcAN8gF5vlHZObpeAVJFCOJpndHeU_SrMCHPB4dXdqyOtSJEF8qlUIDC_o7uASdWL6hnqi0pnPFuv39hqOFjRwU_LlbqYMN8S3xE3-yjuMw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
