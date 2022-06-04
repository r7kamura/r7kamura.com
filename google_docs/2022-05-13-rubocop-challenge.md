---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/rulpH9iEdGqld1XS7_MQIkQ5hH_vnW5OEFPvRvnvA6mf4ZeIxE98kVq6XgfDlDEXg3CCmRIcieVo16SJ9yJAr_pXTU2l1C-VUhJGEqWRBrKUIK5qBOD2srZlwCYSAJQ5CPTzdumy4KnmhO9GLA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/b97g2oqAiKEJekMGETca-DZJtts8xn6uV3stPx5KCdT8wxDsnNWtlmVISXiOoaTNToy6p8N-OnudcDPD0U5nvoRUFT0_ey7acyYBYrTdSmu-Sg0LJ2aw-fbuPopbA1cgWN9pGNLPIuE8Er3Dbw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/r1GVihKiAWiR41xXYPxIEkR6j8Axa9_zDkNLKcPEMg_2AKK9tLPb_y017S_efS4w_XxYOQi_B1jI8167lkFZLb7rerBmS32_iHSQn7bkG3Nz21GCSolNwmUWKQqgrf9JixtCH6q4hCqRM_uz7A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
