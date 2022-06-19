---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/IVfWKXVwtP82crQnSFb7ch7Nmd_KEjY1zvGLAzvvZYM9Bp9IqdWa1PfnnkV-Tbzh0lpWcbpvYsWp2mv3K-S7ftEgQV-hvOzYlq8-sYb68_3R5YuzV3P6v3BIEyvTVJSnv51glSN-AT7PVM6tHA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/az5IlnhXv_QpjkvnwWIL8tXAo9jTY_9rdWHo6pft98KXf7CeLs6rbT4YmZJo5_uY9MvPiaaqGl_vxEL0QwNf6baM_bqcc0kh5kxuy9SKnAPRTvlSXaoQ5FBNyZu3IuMxvTaP9kq1dZ6ymEWtlw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/FIa06_IlVYCe2sxX7lELLGw8GR2ulmCZBwD_sQdS4uVzvu2M4sKxcgfv03Gxit6jy3ig8GxKGVF1Dn4lCkrjnNsj0xhBeF6XYyuYqNap38RvJBSwBKv3zD05g012OMavQSGYTddU_0coc4hW9w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
