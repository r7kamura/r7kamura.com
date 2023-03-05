---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/SZ7Ndnxjt5_7HZTmSpTgrwb6Q5v28ZyevlV3UEVRvSw4Oc2RHroyCuhINkVSEeaX-Yb9I4gCmm6pLiL24bdVhgn8Q_4DLkEx30wB-Fjw8h5Vsag94ohiGg83PjfVtG0XLkwmeUmWZ-rkgrRWDvzMEg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/_d_rBUqWnSlpR0pDXiBV3TkoOYTJQ34oTpqkHu7H8TUcCkqPCrLsRRd4RtsUO4Ok1xXs0xQOQh8lRfclk8wKSYWQnfOLyTJdEysCcs4v0-b8sQHrBqjlc7evTo5dYtGu-jdmgg8RvQBy5sBiLSLOkQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/OH8nG9kk5WAuNzkZoi8m9ExBueG82Is74FRdI0LzimHWHwMNphjHBiWPeE1ncTJJoTgwlO_u3pzMtLJnqPgKRAOen8a05nUNXgpZss-tDst_IBFHmN6lSsiqucFlIj-9qFXW2vL_jj8BqltgIisjIA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
