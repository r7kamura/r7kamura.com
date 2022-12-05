---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/f5YayHYojfNsHq7l0GEpVXvXj7w8X6UIgDLrr1e9GRyhZaJEJQ80zwcD-mI0mA8K-WXdRzjzkokzfkkK0vrRs1axJtQQ7yOKWTCctFlUBI1IFxaU-IWIPt6kEx0ZKSN_SLy01cPV9EJ2euMu-auD3G8txfDp7aXJQ7_JEHxuHZr7rMdi2XoYbdt0iWE2)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/AIv7pUeix-e6-WA2ZD1z-FntoMTlXaY723VSyIlgsEHWezGTgYz-iw7Tud9ZoHk9A6kTgCFQD0beUYQhvQ2_v-AA5UPm2UXWRbCUDdmCInGeaKenkgp2pW3qCb4dKOiTuASSrHSN7VPc_nE8wbl0dbcBJ-X7bbAC5nZzg-N37c5JvYtRFw_h_QZ60AE3)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/kWIFPdQy8G-Pd_jFWidyhoAfFi1lHEITJo-DAXJi-H3tZEiHkKd4hchsUyv0hnhyfoVNO61C7_GuaSxbUlu5nrVlkedv4I6FF0x-dYJh_dMLcBOjxOXtHCRkJ11b_K_knMcnsao52amW0EB3LqAh6QAWwW9D_5fIYmJqXCxjyYqEo6ux5SDsCR1QzaWk)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
