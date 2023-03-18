---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/x4Pl0KaZcsSirocEpNYRjlJnMO1kKEjQP08NY8-n4ZwZnz61j1WYJaT9V3_nE_19tqU50iiL6JTvLIjziObU-cG8ePjVqBNlcSEosA8F6KALOunJVZk0CwMo-2eQ8ruY1_5i7L_WR8FSsqemn1EEng)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/nsJP28Vn9BRWKRronGYzfNmd5_pChQn3QKKnhDyL02nKLzG1UVIaAGN08OIelU0WJW54DDmXLGWXgZqcQ2QrFgxY3Y6F5sAIt-xyCQr2tZKcRkPtFOpuLZxmxR7gYBjxXrQRR5vPb5YeIrBPolrUzA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/q4nW4L1MWoJPAJvMODo_LuOItan6Di1PzP0KoVHiIGJbGEEdfP-vCc_QBFNK9Y4FoiziQsX6J-xbt9zcY-EPYQk-1g4jquzrwEwqhXCVb3dBP4SEMtFkU0Kp3H3qT-HtchfGJk-Ua2SAh2I7K1ij1A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
