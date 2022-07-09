---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/GBuuaOeir0X_PEN3WkHGgR1WskWFXcu-gdtEXGLpD8EE1--A6VoeYT3Qppu8_38EhA0cRDyhVrV5JQ570UfvDocMufestalaw1rgpECDy3SWehLZNOMEMyeQ0SZsWUHJzS6baefw48Owte6hGg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/LhleC4lq40_leh2o9eCUtiUKbx_H3pgTlBHE7E2ZFKwadz6n_PmxcJfwrKNc848dULioDJGEar9_eyp9Iit3dut2bQLDLb1W5nba4iUTAjEyodggjT9BHxHxt7hyFtFJX_8vlSrLsxQlOhSZ8w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/vODN_HU-wnWMuRT46nbBA-fDhepJG7eX3_qWuPfYv0IOXJeKd9R1CKYVkTm8JtYG5bMgX2gKe7Ms1OkyutiDLSDlAcj2MTI_sFA-CiYWAUqPcVd743TIkdQLWrcLXyM2ArlHE6tacGIgZhYCwA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
