---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/0n4ewIfsWW10IoxyRMeDEjGojKlftfZGRh9_qurJbxP0tk3mbLO0__Rjn_hW71IRj4-rSBrXUTGU8G899q4pBBjw7lh-8mlsbR6-ztHkCGlhZcy1XnsFerwk_l27px5qFlwP-uTTW3cZJJujFQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/5OcdK87tFg4HUU5nW_9U8ZJLnDE_9TEmvKwXfkgi0c2w_gwU0qMETd2S4iJ0JEQM1zvIGFETwxgFGhDRoB5Hg8gAJ4uULOw6CpuQhL1HW4rCK1aVcn1kApwxybDvEb5OWpmJ-6LX6GMBgRw9nA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/BDXHnfBvutqCeKXBeXPlxDp8YBsJLHOP7WRly0rMPzePapfZeCFsQokkda4pygOBlDlXqcdX0Tao7fr1RCbRsGjE0eTyQIi3atDMf4T4W9eZLKXuZnzQb_I-vC_3l24JBcnTRVRbRruuKQndEQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
