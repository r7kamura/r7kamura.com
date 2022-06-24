---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/5atmCdAz25HNqJ0HJgUSkVWWG2ZEs14blNRHb-DdSQHQNrlS0Pnkm6mWMX_7SUCsBqPFxBWUqCYW9z0a8-lq9SPyPNMaISYyJxAewYxRpIAc7GIzgMX9B-uyPe3wQ6fnwkJ8Ln0k2WKg5QzCPw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/jGcsp4U34JV-n7Rc2zWHqj9CZnJDbT37OypikK_JOLmsKGgBno0TIMWRpZursk0CSyzLBv5yJ7fFotDoMWyu6ur2UuAVejbqBV8Gk-3pMgZAdRTIqkAobXVNStG7s5HXyDT9N47jrz1q7zXLXw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/ptP13XsbRwsCZ9qAFLwZaQiMQsFg1k0CkQYb84ViFlvW3kw1Pt6LoOcRqHCGFF3NBExXDcYyV0TKpwwPlWnKtKXuDFS3ixJ69E3n1V8ONxpLDiXTA2eNpb2Rhjkj1BCWuedUArKJZYZ_RTgq5w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
