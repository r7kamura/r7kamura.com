---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/IiI-9ATzCwZCMRIPU1CT0Iv8y1sBthhL66CFX560p0BEcvyGFdpOKeQnrB1flE4g8ukIe9s3REJzZXhuvuI7nObqnfRyAAgerFIkCMyr2kg-WsBhwi0LaTJnO8RFLczMyYSqYFfD7NbLeAwconzxVXHwjp7YQxA0VtnsSfQRQ9q6IiuPJrI_eHxxVyL2)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/TXufFqUPRok6wQhmsCHL9rcE5losykOlMS2KqknQO4dk_gtBaad_29_YNI9t7XVZE1xM_QTUU57WOwup_cSPVjvfS7Gs9BC6Wn-QiAtsgbauSjv_p2EtAVg092DHPGtSmB25HCrny5_pqvr6QrhSBzvEplz-MRB3ItDo92r8KTCOdgX1DjJWQrwPbnrc)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Qo72L6HwVsfv0vlqheh9xpool8vg-RUfeAe6Ppb0SpbbeITTA79HdZERDYXBfKRmFcWP3jaHcv-sWyBsB_XGwVS96W1JuPcFch6m1wN66UT2ZMgbsVFHXSFAQ0xW9zFw7j2ylk8sV2TkMSb9xp-bKCHjViLtYvHhVhD34AMzO6fsEoEQ_THaiCWl29qI)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
