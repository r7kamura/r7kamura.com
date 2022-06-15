---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/M0OIhiiShK8QZ_TRHmFpoYEO7I7w6eVGEeqHiH8yfbvgu32Yk6ArSoLSJ5wxDUyaKKN6XFtp7IF3E36D9UDEgbEp2Y-y5Igb5gAQrFtRvcWeoPiUWxnNVnXTGLxvdKuR2-fp-IeWstjcWRar7w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/7gVunPZw6tGrpFjWmjFL9nn_NVAGbz7nbVcEb-cNrggfIBuJ7mNNAknVrarpEBlVsRVjVwzfpikBgK0EyvIKA_FxlDBCL1rSrum18oBOjAUNQrivXGo_UOt9I9rMRP0eCzA9NWRVZn1xQjEjhw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/3zK6aEcHB8S21w8SmqJU8jr9lSh4vNaW6_qv_xMq3buiVcFrU3_TgyNY0kwToENJZSkcfCYsw7WUbnIiIZLofjI2gK8mbW0BI6jCDaLwcE47RpJ4xBJ2xUSM8syEHNhfbMDLo3pLlBdEgmyZAg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
