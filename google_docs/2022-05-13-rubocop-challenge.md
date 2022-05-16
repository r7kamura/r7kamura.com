---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/08Ib87pXxrs5MwqYz51zHhNc3ysydf3T59TM2k_RzQqybpMbC6QYfYFewLw7FS-v8YNMB61ybdB7ihFmHuxjK9PMnKQ-rSeklt_qLuyhtdx84MHSySq5wNHtAzeaB-ZTkKo_afn1afWNk5GLjw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/oDq5FcpiyCy7DehLLmGfKupJO-LMVKyLp5rS4VfnZAQk5gMjkQh7FgmQVg--7bi2UDOEdNySw1nulIDtwOI2fU1Lj3ZHUmDlXNegxuWIEVP2CprUowjXL0IF6Ek9EaUNyVrpJ95AvulL8y55xg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/coq0ZLgFYwbrj_MTn0tZ0Hs444vgA1qQImtp78zUTpAX7qR2jy3eF0iDix6l3WRFgdwIJuXec5PAB1ZKPhogAS6AmjAPzu9U3FFqhLIkYrVkv-311C2rCS_kxbHoGGJm_md4-mL-tnCaLmbV0Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
