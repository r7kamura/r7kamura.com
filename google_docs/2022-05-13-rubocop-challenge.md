---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/O2O4Bht1Q0jx3__2IQTdGwXhsPNkgFgrHvItiDg0RvhH3i4zeNQ2G4eSjKZ3deO2eBwPKMj5BJOueZzrvThc8XqNhVEAhO0ztOU-qH7U68V-S9fHuLqRkjxTwOxktCqbiuLjECA1xrpB-jQbawH33jbkp6davReWiCQtCmQS1CMU_zJef_2aCYD002eH)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/WAnqRfLfsOMerJeaGi35FJJHaY4qvZrJyr6ET6pxBfIzpYjYQdV60_aU-dPAtm52UDsEepm-vQOGX_XTSEmZaxnR_pjQcAKRrhxTitliDAQPO5IS_BN7YqkyOxMcnspruoaDta-8yyGTAEZ1KcZHiWt1HVBqGxKfiZbvM2t98f8RsfBqY720-9BkWjYt)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/IgBX0QimCd1VRY_ISyjnHzAefFdKJn0SwcLUJz2B1FVjRI3n4Q1PWiJW87ypNSwZ6nAPF1r_F8H8w7H5nkF5NzqtOfj5cuMkx113ZDnuSqotGLe0zbP7vs41N_OADl5ywt2_EE9Y6Jysh5NF0oQACKcMJKEq0iuvFk23cfUVt4O2eqXYM3eNUBlxeEts)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
