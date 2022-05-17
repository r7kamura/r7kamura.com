---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/hU4eVRJRvuLzw3krRz1JHkNq8YbFsQ3zF-tAPEmsdQI7_9KtHAPrEW4-QGF0eO6ssBR4GmqI8ifMPQSo71_c2-H2vO3bZ12wwV2NF4lQQ7qtUHNCSsesllbuuKShid5YqVMgTBKQbUFFNucL5g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/xQEKjEbnnlzkRLkNWCvrbcufeCniTEimQ49_a21fu9qZc5nBicwud-sZ0AgEfZH2-GcJyLxTkeFzz2YI2_FEUWFSmTG0iAW2MAApxVMme9AVRiJ2CuG3xk00zB4vB9MnC0n7sPEs4XpHjJwapA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/fle6Dp06EjMuDE1zAeKSApGsg1IBWuw3Y6y83bCS8sH6juhqMH_uWRsluPa0YLre9NmLEbF8CVyDGUdoQlt9II8XLRcxwPuGojfej3UZuEMDqkKX3G2SgnSxzTnhuD8SzZi_1RgZ7Eu6qahe-A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
