---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/XlIzeflNHzcRBR9QE8DUynLW4Ksxn1q0UeFibt4oMvgaID3W6koYhLeQLTswak9QV5sOAj1hoxST989Np8XnFwA7ihAUAKm_QsyPD_kRPAnRQ-0s81Z2FYmsRrZffRwPzUjmYYQUH8LvSSoIdGBa7t2M2qud8wg9yrVlH3VmXV4d5p24gJdb6TJiIUgF)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/oizom_ufH2X9QeRPEalH-nvODS_RfnYwQ-e3dQ6P7eCSV_OC0ob6Z3pUubrlXbnUifDImjmT74E-Nrc7G1-WfG1FIngoAYiuikoixAbCMSwMTSWx2PrQCF18_lEuhAA8o8hXfWdzlWwRxd6tsTLuIMAC-prcLVBiV9odkFmNyXiNxR_qG5CAGze-9MRB)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/RNyLsE1VrI1mblqJtPtT-mfCmc8jEGd5ks_YriWHqhteSVoQull7-Av4TPPmrTmDToTW5oJcOLWQEdxs9vhV8ymYpelGdp33ZctZZnc4f1DpYfhi66uopmhnl2FCrDPFhTBClBryC0F6HlLInWx6Ujigr0xspCxDuDrhmMnMkmYuaxOaOFdusKU5Qxlt)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
