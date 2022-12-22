---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/dOf-G1ZtWuE6JIZNbKU8B35gdEwITQH282_EfOwkWm11rN0n4fSB32nH_octsKDS98YdLCr0yNzyB8zdqGmIUC-4Dl95pCaMc9lFmh0JbKN4XNVT5RWFNeLadX_FBl0_9XFsZ5_JAPiaF440Oc8CqtQFtNFfm3dLCg1A2Wkow0Z1PlcLLXqasa8_BKjO)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/Ci2TOWFiQ7ifzZrqC_CIwCN5RgEE5hI2GYd4P6ewri9UorcAuq7isCZh6RaxJZaBJVAj2rUhoaKgq70nAgDIDe34ixf1SWSaEnTT4XQPrmIJHC1R9wAr3jiLC9ydVmFV5CQdXFXcX-liN8ZlPb1fQuV3GJJnEpZcJpYsijeMNldOMvzzCnJTTCJp_0j6)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/Ze-SKAyueSPzHoP5xqvzsY_fP3cv57pxBaRsvB79DnG8jr7qtNR_Na2cbRA3t23SI886XdO9RJtodGc3YOTUYZPgUW_prinvTRd1mZjESAlurMazGbOwk_cf1tDkw7hm3zEWW-y-y7hC14o7v5dgToDyh97P4vmGDjoHrtd4uqftAzj2jROADP6sqlyP)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
