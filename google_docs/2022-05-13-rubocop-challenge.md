---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/5hk2eA_R2lLiTTo6HTBv_hQswxbp9qrCOfPZIAkeO4T5eWEUHNYwUpgoZJeWD6fxquMZyydYwkjyS19eKSgHBvqvpwyLFdzxi-ZjpOh1M5VHy2YmhPCS6g-LCn67R2KhiXB717o4ozRBljrbQPortw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/3OHXNm2Hv3WuTB-kpvF17o-XUOlXmsF3RxfnzVdFJC0LyPcWWsioKmGYxc-0UgX8BJa4AWC83jw8E0EvdVb34BP9D9jypmI8E-rwdNVCt-ndIJSkTT5m-QdWaJH52rkhLcF0oDt1r8Krue6HQsRdOA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/fNOv7ZIo5AdxU1LNzSoQAz7lSwOMdqO3Kuo2sOjpXlEazQ0Z28MY67Qo-LnTEd6FFhGq7LzVtvBXhU-S4cCv6QPwptBXXL1xIR_S9OzlkRwhKdSIPYTg-ztQI_HpTxnGbcdlCaNkMWpWlHQorW1YRQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
