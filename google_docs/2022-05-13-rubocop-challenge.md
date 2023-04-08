---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/4595K8eBXLCXdrC0dSkM_BgVjlEor_LhiDhGfcqDokF8tySFGCs-JsM-pCnG0XcVZuqqCsl40Xmk7MYJ3hG3-qnKqhQTUj-5xtfICeDOz_vH7itObJcWDSQ1LHIYTggPF_hLYzfQxIAkCxCs52a03g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/qk0iFC0QGS3sKu5w_D3W3CvWw-zyrTZD6Cx8dpCQCof56eWpVzly7j-yj53ejJN3GZPGTUBVh9KMHSSXhQLrjrMuJWNEiEdQ-0-S9BsZ6EJ0NXfCYm4Q4VcujlqeIo4EmXncQTqjBaLOdztdzfk3MA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/psUyT7N2exlnthHJrobn_H8b9OUyFgMUi9-xFfPegGSnJs9zanQkWy80DoUx7l4cJAFWuuzZSFeUnWRmkDU-60CANNXxWgesvGdmEkGtF5AW_q7mDY8rv-AJVteu1ufbNFNp5VYJZBvEXNyKirOhkw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
