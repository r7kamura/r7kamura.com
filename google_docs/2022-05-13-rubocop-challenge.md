---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/g-Fzfj5WjEhDTs_LgbNtWv2FNOxbzWsAA1nQdZD5_LHxESi0AdjFIGSvDu0jVVF8dRtJY7zj_bqTS9jSfXIzO3NB-wuozwnCqYfbTGQv8VNS62qI4YX5z1yandThKaGQNmz8bOnp1QeD6i-Zn0KrZQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/wD3RRi0UG_4uzLcx7vVwhLVTOQVAocEHEsszzwIt9B4WOqqJ3pJbXo0QwGnynR5glP47DKGxpcAqY0JBdZTt4ILCnNbMvOATEukLRMGOV5maH0Wsu5AMdBY0TzFg2Rzq2IO6v-QzKIxPwRYblnos2g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Tgc6bDqB3k5JdHMb2ggX4jxFLoCYaSsfp0G_8oxzXJE-g4JBzVpwFVDpBe4NQcJvulZ_kzw97vQao1M9F82QiPwfeRqGlcbAZ8WAYSvwhDYRARp9FNtfc-zPh6vepZVtnGaMEOKJtLt-JvbF9uL9rQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
