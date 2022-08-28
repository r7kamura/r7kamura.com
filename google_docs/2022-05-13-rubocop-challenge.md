---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/8xDSdFfbRy4ZgxtnpywkMPYeFErqZmiH75NpUey-nMKpr2rKTpxpxIVx52-PuloSyTUdJulVtJNd02x4NSKXI_F8LT0tC_cDJ_FeTn6-B9oeXv9a6MraOV3NrEI03NvOA7qBOpZC0T2dBoL5xiZH1A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/DtDVDnGdkqDqOEY4JnQhvomcA4r-9Gnwa5od1ava5_jEO731jtotBDI4OLw8mmN49Y8tiAz4rg092WAhUxjVAZJEYs6WD0pAacski1ODX3uqOytufiBKKfl857IJDCpUa0Gh29oP_fyTx4O5fP0FiA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/zFCysG6x6fxMFcEqKOzEb9lPHWaf9MZDtc9SLOOcF4P2j40Kp1arBlnw-BHu4GHMaXsf39zR7LZvKIKBagBlOwhCJ6M8peq0TOIHzuMyhQA1nAI9CKgv8p48Yfjzv6sZ9qxCqKpF9SgtwnxMmeunhw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
