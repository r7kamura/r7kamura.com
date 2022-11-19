---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/8P2zdRb_kfUnNfQ4XvpZQr5vc7KEM1zMzCUpd0v0PhrFR9FvxnChAlYJYl_PgpZV75EGSo1586Y4x5kbFill3Qhkpi0FjKdDn7c6RD-K41OysnInI712R0K85v5ilqZdBq8TSm-SbF_c7vFqiFscE11x_7akRuOc3IuoDAmRCBpUhTjWFex9Xliy4ckE)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/vl3opDFWhEt-yzwo1dN-cLKkhtB8WsFokG_G6St3F4T3pOPpKCKhV9IfHj3SK7404BHDQtdx6WzDHWl6j_WtJLVdLSmqZPTse3Zp9Sk_q9Cmg98pBOJN69sV0LPTF5LWp_Ie8rv5W9FAPaIHB0eYi9tljaDEPAEdAUK6kFfRk0u0r4nRFRhCY2MKfdsG)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/OCtkRlWRFFGpJHq4siG5tOjzoS6Ifl2taM90jjuryOgsitL-RcvOJHCz_bwR4ZZRhnq7x-1lt2njvOvvzivd-22Ln9Vrv0KLvHLvefl7gjcVufR2KLRd_KsPbJM3dOp6ZjeIai3CGw2XeKD5s8bFqtHaKMCYMFb6E65Rsv1-83kvLEToSSB-0DY6uNLC)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
