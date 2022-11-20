---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/8utS6VAL35fiWApTuiqvDWSAV8BJ0T1EiKYA3DXDMkZsJDE8BUf6ZUimTOT9GWfwQdui07WvGDE7jabHJlrTTcUX34fUUeqs2iMLxHYEfteCEvx1AKEIKkh4E8MyH4gSzBO9d2W9P1NxK16tOJ7BPnLz8eem2B2FFpysr8tTfVnS9vBdrdyOoyba5xKd)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/BI2r12jHUHXcLEi-HQjzBebYc_d9_ZvSJn1e6Qxf0BTsF-SDBVbBfezalCb2GyRQNX98hPI5ghCBT-LBKxn9tvX-YivxfSE9_dlkSu4oJamRBjCrIRtTpSftS3OBii0lNe6Z1eHqxPQ9aMoCqKkC1Jpd49f7bDpTuIuiSEmXMwTMMYAz57t8_rFpIr1d)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/bnZgfGi2C1d4i5azgxShAFffqi1iuZqy6wd4V2zYUeXBdGRkbO7Q0Sy5jlbsnH9L9w3pGeRAPnw-IdQzde9q8PHaphE8HBVxDCBxdaNPJvUQAv7v2JCjmGvc8AAo3zXaxLnP7pVAMPUtK9kL3o90arRTM28SABT0tnakkKMpYv89dHFL1uzv03qjo5gv)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
