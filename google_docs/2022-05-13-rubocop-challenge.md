---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/xmsSXa3TxIQC4jkNvqCVIq_bO-1aP2pNRxtWsL7qhZLvM_sBWoGecL6wQYuMj2XU7SPhpFAbirvHmiqhbtWU_to_b_WTnS2wK5FQuP3C1ejoglTqFbMJVKPAk1UXfb484za9PM3Ex1osBaNzMACn2EzdR_6LO2l0oROGiQY28VS1FAHdpi6n3Ew3tCZO)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/Gw7bjVyCORCg5oVj0sYAjOCE1foi_-np1g9a3lF-O4sbvq9-FrpHRG9i-C7mYKOBxdMtJ3asZyeTMcDOCr2PHBc3Wxxu32fK9GCZ5bodHLeP-J6MA_xMjrOVNMd8pXdCbjecBRdIJQp2rjyvAuyRz8MJ9dOps4ceOQBScEK3D2_I-HH-KWmLHx3rqmcP)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/Y7a__TuQzkpztrn5yx4VNFSvCWLt5_hRE7ZWRwaKao3tbAxHY0O3TTrlijYOXIPcXdrsSvM3iTN4jxU-bUyOmLIj9dZNS2RXehITIsuaUJtVsXSsQtHZgM18igZjhmQ1_pHnXCa5er3QlDX_9qA4LiUFs-33cWZSLHL-gD3QswOM0uFiKyZSRnZw1xcm)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
