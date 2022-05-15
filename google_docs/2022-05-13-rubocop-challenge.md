---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/07kVWmNLXWU1Te01JDJYSN8I2j_x6Nj-sbGbWBes1dSWTciycWR1tdSO4G9aYmsYXZ6MiGQBso2UB-ZbMYjrfJvziSdwt6ULlByMoo767Y9i6Ci0xyd17JvCvm9PjIRmAYwxT9wW_eR5ckUJiw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/Z49hOCYPmZizSn5lxyaATnNdffsRE7aoYytI3YhzoOIFMn6zX2LM6cI1_VWGaJbuD0uphQM3i70bbVOWiQOQvNCu4pMmRyO08xoUy1iKEedA7AM18vvx414ehu75BJvQX1L4QYWQp4BAnGfCZw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/0VaXNOh8d8dF6vyGYh0sn87sBGeb33O4wfTq4qMJ291NzcyZx4FQ2EmhdhoCBvfIDBMKvXT1CJgR2XCOtSfaU-MrRYITTPf1r6w1_ZbRgi-q9yQYVgiOPRHE0cc-Ol6uCc1I0uqfIXreSnk6PQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
