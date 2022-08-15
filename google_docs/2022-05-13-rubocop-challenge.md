---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/yQ0c97veZx-XulcjmOsl_AaKYPlH3OWnw20FRnpNIWrze0nVKoEsKa8R6Ig3sv_Q1bdhTW2Gol2TVPVxjkLZwHOeoNc47L5qVgvTmkmwI3otreBoBhkYritcGn4zadVaFAx6DVHHnESufHmI8QyV0w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/NmsFFX0zWuXf-LiP1L8E6eJtZAm5TNBZlowrgu4HMtsBmh2-nTbL_w8pZI3MDNsnB5Dsg1k11mJ0OYoIy-LjCu_77Q_U1Iw2BOt2neH9ZnmD23sB3vykSPX9iEAcolFIYRMWTqVjYikVeX0jWNSOhw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/UTl2oiy71DeGsvcwvp1Fpzi4OROKbDCmfpF-QSJv-XfmeVI9J6J6ub5IrkABbilU3oYaB14yjgYB0buNDn9qdcXMVG_ZTgtxSX_1voNZ7tb-0Jd_0eEYTiDyBJgPdK4T1JMXpLgISmo557joHLfyvg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
