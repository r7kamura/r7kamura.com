---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/jliVEc9aqtWjAuJ7yHjFynEjq6bOVTy-ibWOOeCJj_f5vxUUwixTa9bGTqe18MICy2OU8DAPkPpN_-kJRYrYurZ4jkUzEnJ3bZF4r16lcelcAww6FZm3mCap6m7MVMIfo4VLrT7V59_uZVv-1VXOPfFeP1IQ7Zu0QGYO7lnx9ZALvuIG970_6M-B2URH)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/m8SfszWKnn95jk9XFRHH5ywO87_cVlbICc-zBDXh53hZCRJbiFaPm1Xln9ovpzy2EMEumMWKnMhySaAlgbx4r2s7DWGXVOG2GH5xXdMw21x2DW98sYeHgKaUk8uTsRipmS-MH3-y1jLxWQ88dR3grvvO8Og1Pyv3HF5rmqAaYSOCNbImR5HygClXW9ga)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Psls1evHYii39HEqS21wlJq_Tfz8a3Rcmv4pLfZJKTCumuJl8cubpaw9pPFGHr_hBTyfq5eTyv7_3o32mj6qXfjghjlCxcPtCbi69BeqldHwZbauTKbBimZmNbL-RXmb8B7W_2z5ThRDc8Z2cXEtJKV2E15R1k_rQLvD6iChDTMK1bDVJ9CRIV4D7soA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
