---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/nTyYdbNh4oqEDOaIw0fZz3HUzkOH-HmB6u4qEbmxm1wv0lpxs6pa6PFB2rmW_yH5oD9S5idka7AK0RkKW0wD-_onhgfnPauH0-Ecnn6MjBCC8IZu6WiiiL1-FELV9nnLyZ9cxdu4_d1LBSkxD_1LXgJNjLKdz125kRpmsZ5D2tku4kIJFqKoy9hf9lXi)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/dBakYImHbqlNgdiJuOgGx0okUdJTBapVAOhDSS7Fz77Du4ybyV-HWqUkKhlk2LU2AaQERKLFMyztGcRx4h7Q-TgR9EJqz7arfZ2cKGL-fMU6A5OIHujwFmDcU7CdmGkUdvw78sPuUmaEOhMPaRM45mjUR_R1ILABaJqFFkmxQgw13cSmv4tkpDfy95aZ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/oqSYpa4ASL2uDbjy5OAaS_bldlkYyKnHH1K_UsrvxLyRemvXNRWlW7jPmz-zPnZb8bgzfsojFhO1JbN0DAwxL_WknEjOCpLVJcZiCwSua6MiuePKyQovzua_758iD0j-0xSN0CErsjiMo9EnmuiFJGMI-by3V_UZ6UOPbdcVEzBnuO-Z8oVNtSOQ_6Me)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
