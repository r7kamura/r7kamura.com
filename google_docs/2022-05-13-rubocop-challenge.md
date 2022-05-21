---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/gcoawnOUk40-ya7Xq2e-IT3uMgSW0AmaUIWRYNmkddZZ2QlzOTZacDEJdhJRKBeleeHlVeoIks0wLXHK2tHxYBllWGrWvjpCIDepbjXdEvSIkBBbbHKIf1OMg_ljKlFlRaHV2w4YGIYDXQeHxA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/1EEKe5pqrM8fxL_JPor5e2-BRrVH-PfWn2uxQMV4LJ1B3GJRuC7eU_2XnVCjl8FMFke2Udz0eR4FiQZPt5nG4rM9BqlUXbU4pkLzNArd-nMds2YmPL53XYIHz4bw3EC4VQJ2TCR8d_KnA-GnHw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/dRA2uEq60rTeL28Ep88ubEmTODex2QWMVEQSYNwT5EqrVGJp3La3KWIpFQ4lw0U62_CD1eMgSSAzSs9rvLm10UkOHNT1BEL7ZJ8xcbguYyKhq6bvIoT0KwSZg-c93W-aPDRQ4BnaDTyc39yO_w)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
