---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/SnUuznIKfeQ5BTr6S3kcb-K2aReczlV0cUrwTvV-p5C58DDuwndHJ3tY26Zu5QeaB0NgcEQldqDyimzunvVy1r8yR0DTTfo5QF2sHuRpmO1xYHkdNXxQSJWE1zgE87Vh4P_8Sy1dxIzkV-LRWw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/Yl4EjSLzbUq0qIHoblId3q-R7exOulygFeZ62aNOuVrB4Lgkvi6ak_xjfjDEGpgCn2f7mmsDnA2IINJw2M07Bq7gnsMai2846kB2l-zis9Tw95gFx_WlPBpMuG2COjEEvIvCCN6y6WBNSMXx0Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/L9eqGAMCauIWt9s2Jc05ItEFKqBam_wZzY3NVnMHPl4aTVDNEkiiYtEm7ku-CHZR3jp_yQJD0Qr9IgT935g6n3z2lOg6X6tOK9S-3h4CtKJguK-scVq14dOZttyRw0fGdyFJaM5SQ4ZSu36EMw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
