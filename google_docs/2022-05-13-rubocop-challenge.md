---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/kU5iLxmkPNyQrf79Zt95d9SLD0pNbhcyKks2g9kzYn5s8GK-aq1U47GJ43331qbOkehuMlxH4OUEYguDK4DF-FDdfnMhGdmPE0AuSSUaiQcBLdO7J0s_9ppRRFQQTtA3zc-_3ti3DTveADHcft5I2g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/5g-5131Z_lR0xhdmVFbxq50WVTnGO1Hze-XUf5SCjXsI9xkNqxckeylbHiJR9EYOORJPknvOc7b4mq9dtNEFI7MBkdVi8FK9ke-nOWGBxqA1yvgf8OGzGog95JLiwfJr_MgyKUlbFqkt4JeKrDQZNQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/QUyXMoG8B6APL3LM_oq7ah5UIBM-n5Od8WFwtJAT9tAYMLSFgz1vV2Sql637ql90MHpxYUEXypCA9A46n7JLM81Ae3pHWtkEOgrEdqzzlhFApJC04lPIStdsQZwoxVdhVbHk_ay_zNcJo4bHb3P3zg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
