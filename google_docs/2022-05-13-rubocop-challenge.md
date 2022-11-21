---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/KZ0bSBqi48nodwvS2gzuqsNDbyQCno14cMTigfC85squu8V5sBRrgSfyWZ6AVoXosxF0lFomPKf6gEIG4cDKMFKpFY39GsiHOAbGwUKkt1bQPfgAs5JD1t0akThDRIL8ZPL-HCwUeb98UnOSj4-w6s0bRGzfPFP4oMotyREU2HHYTZUjY4KwN-A6ID-s)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/71ktqQriVZ8Hk9xXFUIuI6Ti4Z8UgX7BvH--328qaFeJLehIkOtKfELJNlHRvfJYe4eqNu1Lm4q4g8EXyCPGdfPGw7S3c8XIAD-ffSvMSzSlFpN5R4QrYGlid4BcerZf2-Os56EIoBxrsd9QqVs27yd3SaXyO1GqrguhZ3SSeLkQFFa6t3ErNyaGQJES)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/bVBmLcQrK0Qa78GeNXKPWQXECG5-mSy8GtjSG-9AfHPrgGHNvu-njGfP6ecBzcO7zl7GB5EYXL9VTyhciamu2l4nyAXG3KrqCeGjzC-hQd5DjcaNWK8wU9FIVjUwh6cmAZzNnjYI1XwIMWxHfvb2um6KO7l3_as1VPWwIkspn2JTxIwSUg1gHCWbwHfD)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
