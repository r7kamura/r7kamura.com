---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/8Oh29if4UA3q0X3_fi7HEPjQSP7wj9y89n-PT_hTX2OaLg2WQWsIFdL-2YsSXop6KFmhOGtrfATS-0PTkdFTkOn04bYI9UzikYdDruA1eR3C4D-N31jwXtiwTPHoIxi9cfw6cNoXt2N8Zupxkg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/1YbFSnKyOYEbi985pfelj0ezWnRCuZv32oUDu6cU_RUgkXZOw9SbngAD-WZRzR4mPA8x-YobN0cUDJNrd2DIulHIj-Ty-5e0OlfaGWtSDzyDIUESvb35oruGYHl9QIMTdLcg-MMz-nQOysd3AQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/eMoKjYHfCAEJJ909lUQeFUNelZeDUfC741uPwJJ_HDR4zxbCp9AULTuX0kkrucgI8f72Fl9wpn08dOXB77ZkZBPmqe85mQfX0n4YOFc205q0K6DqZ4YzfqCK_B3uRy_lsYNj_ZFDANhqJaMrew)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
