---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/HbjJO8ChM3F9B6UpGevq580dvm2DczLXQbN7sJeHqihM9uL6y48lellsd_lw1kA187hJT1iyMtME4gbdiyl3c4YijouupXt5jbN-2ku1dHDH9DmAE0VlHPwdIOS4MxMirGdVnuPnb9o9mdVg3o_1sA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/P9rFeqYxJ0QprOT-Fhj_qjAS1bV7-SOC2UfgjmYTPszSOsVAqlma9vJ2lhbIVVm8vmcqyS4huXtB0OGetT1-Bo-5fn3rMxMU0kGUhBI89Yk57bZNnA9eT1guOM5O5-vCMtmY_QYvjm32tuBCrWBfMg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/KkuYCB04pxEW4EdjLtZFLVF5qzi3-DJz_kiKdJ_dt6tJwZ3VdnjpeiY-i0Dp8tFChZn8v5-3D-nRN2piAkFT3nDXHcgfdpQBfQPQijIO8ixN4CP-q6V3oOsk-LdVh3mm_RlLYKSB7STs_zU-oaIUcg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
