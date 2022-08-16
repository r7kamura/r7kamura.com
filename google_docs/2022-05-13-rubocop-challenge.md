---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/0H0vtBoBKZR1N02k7RX28FkTLu8b22hhXuTyNTTepH0ObJV_u9DRhG3eBCwkj8E7VPqVrVtd-qxK3xAd16Swv0nG579JMQV_Uc8VHBVjnEJYwj9ciz8qq2rByLs2fJGyXdNpLsHfvGg_u5reJRxrOw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/Yf4sBNyuQpT8mfvI_Fu4tofnSzlscsERQ18wmJR2iDmr7RXTlGvmw-cNht2cYQZvh_Wbabj1CvVB1iKZgSgtMjVoEid04mNq8WZR1ZMq7ydp4M9l3qfRoHBvarEGHJPPsWqf62JYIAmELNYe7GEB4Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/_VLh6jZeYOlbl1MFbtX8a1nBeo8JjCTa9G9rcSpElO9jY8VT7UHDjSbkTVY2zhFr9tONBM_x9n9zhNHp4pxvHKV-Lxhgax0pH2Eg-PniF23fiO_zAjTCCCszWshk6LGF2UN17iY9AYSu4yChM8kubw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
