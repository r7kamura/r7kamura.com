---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/VMsNAVxFQEtxLP36y0KN9z8y7fRbPUzsOL9e4wTpvlI9zBF6PbzyIoYF4aJbZDxuG8VabTIAPNOAzA4TBlvdg_KuUPYq30-YR2DRspPaeVEceS3ErsYub_gCqyRSE6Ln65BJKzg86XRetPz5xnuv1ZxZYGpFlduN1CubAZnlhT76fbdH0q5u--DlWr6h)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/tNY6duYlTlg22R3sOczrnOdSokLXANcloSCk_XvsrdriWzfbE-Bn8ukQM_mSjWM4s7H0tpmdUKhNxFM9X7_3VNHd_WlPjf5Cdh-ixlmoxbMAq5rNf-buL-ZkHXCvXjGIZ3HlxPXmW263fSJ4quasHN9zoqooPYp3guWxoSct8wHFkAQBVLgRQDZ30-66)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/pa3QTWz6bzytN4uPxp0Fyy72yNgKnOpzXfNMBfb33MPeUw9E7yKgohYtiV8STBB6h7EmfMHDf6wKqF9-BcflnWZhHAypOu5AKYmTuCdg-bQXlEIBn0EfmgYi5rDEMEHHMF54tXPMburRAtIhP-NB7pFw6dbvPUkrdyVkbxh1u8KFGG2GuFsiDZXJ3Eub)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
