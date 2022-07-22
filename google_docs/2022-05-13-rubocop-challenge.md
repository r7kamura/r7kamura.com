---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/3A5OPF8gEC0LG15J9TsKb3zvXHaDR9sQsUghl7EmZnjPcB-faaf50ZcUPF3Tbul7s-mWIrbUz0lrzEcVcrysBRNKu5GRWijTXe2iNs7ZN3NwCGGB62KFwIUBjGoYxNHZYyBZVFKiu4UIHxcyNjp1Sw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/Gfnf72HWH8ChnPp64zIPU5XEOR_5TxQbsLbGHE7ziB-FXqv2msfDzvJ4Gl7AC1HkmzE_SlP2sbfjOs5OtwG9Lo5ZdeRmLSOoaes0pSOHgHskdHxYma1EK3vcbcN_1fVblmVkuKsfHdn7d8dSdCFA4Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/DrvqIe40KUVcewXpybeLmHcG3iematEMNq0O_Y4UOB7Q7rC5x75uxBjE_4Wi3Mw9K4kNutzOmiRToU7Nm6jh6cqDxiW9Zzm5-GJfSHIFaH42sgosaToUffp04-LGhKBwZW_1YglKLQaWkObtfb1JFg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
