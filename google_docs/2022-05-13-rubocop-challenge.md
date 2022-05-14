---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/z5OL4KeTxyLJTcIlI0IjQW46w7ObHmbqPsDAlMK6b2rzL7aZtNFNC8okOEn3H2T_RGMLy7amr4ScL76d7mK4zF9rytCOFZeyir1koCMOryCFhwKyeiPy_7QM3LjRWiG-6TXoWQ40Oiv7ISbtdQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/_lFiEIm1HnkuGaoav1oHNRfhR8lAsA9mQLK2E-X84c-D5pccuiSpwkCHBD3jWaHkYvPLpmEAimsCyCPG0BOJNk3efb15JnIG-Ne28fb9oqU8aWRzuPew2xpO-qKBn7PGK0xCa1sKpc-EtzL67w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/GGM0UQUyKaz-R72ft0YAZAy7fY6awiWB3v5EkTvcFb4ZrpXRduXegx3uAzKLinTWLnquCL4vcL1kmZAkBiviSc-emwPwiddPjX_rnpi9mJdg5T6vN2676W9pI-OVEsYDtshsVQUcCoHQnLXnbg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
