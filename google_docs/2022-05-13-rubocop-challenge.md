---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/0lyCGVjjdixQ9H7SFBd9ka8885EF01GInlhMcLlYWa7WySfPWIHXeS98vAImRIzTMAXvLKLeBoeM3Ou4FX5S_n_07BbV3kboUe7OK098n6PRu29nSQklqfkb5z_FjqTNzlMw3BNNYpW22I8is3ENXsjLknyEmM06jt_XMkjMsxkpbMCQwCitTbOQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/0qgO2O8RN9y6hySUYsE3S_aiM7TKJGaSswjpVW8QlYPUk-VK2PMbH4Xfuw_O1JO6bNzgqqxJvAo7XSsopTqfRsYGSnEwR9XRbSLncGAk4GGzI2--AM3_zURryqSmW0ajucdyprY1E8fh9_LT_7IM_QHXhYFUX5xl5WU2RB2f222PY1I4jzfM0OXH)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/9Y_FXTLp0B9-Uznmq74RPICsCX8MFqjv8WCXS8G1mXpxyEw9i8qTeMRKnJSTlPZqdYslLiW0YnZV4KBfmRyKEXIhMTFb35ANzbT1pm9BTuoAP7yLAz-PwC6BoMrs-aqO1dgSpShMfnOXBknhWKyMLty1CJDb4vymWe4w7hkMWGmVPCbSuTk3eq1V)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
