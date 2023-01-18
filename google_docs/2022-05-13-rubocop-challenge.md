---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/GmGqDRm28HgsOorsTRRX0mxGbmCHUqk7sqn_S4giZa3GzImrBNLEEq0djnq_Gy9bXIlLX-Giz1wk1MThZXr3AMnxxV4SiKOgbxV5WYKyYvn-jwRPS7_r5AHQgSEK5aJoFTNIBWT0lKO_xS6VSti-wuaD3Wl5PQZhykIZLq2t0O35F_HuW-JMnvAOOEhm)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/wrfZQGsbTYIPiQJE62noBUkJ1-H6lv9TDQyr3lHYTcCBFsFsgoMYInTrDfRwoTbLNRWm9XNeORJUv4FzHggsLdjVUb4A6z_uRoz_XUbJ2r8uarVUmlIxyyW6PAeBd_E-vuwKzFJjySfM7dlcSx6G_JGqiSjyNCvzzIIySAqp1bcY9TRBEVhdgPt8Khqu)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/3Sv-Lco7nCI31KkXRLH1WwqYOf5wZDF7RB8wP_d4gfAS1-vy3RCWesQigZTl2x78_ys1p53tbnMZEg6kPBElVQWuj7L6HK_KuFCB7jZO1L_RNEq7CzewnD4zOuzCiOUmFHx23ObqeY3SNe0QGeHi4OinMnlWyE9urt7fcMxz96yTXWrabFx-kkUutrDi)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
