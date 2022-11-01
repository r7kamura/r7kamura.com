---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/sJ-s4btjy9PREdvKeA9Z-oPzOrGpV9YCKRcrzIFx6HOwP6Okcz18xOasm5iutAV8wA1-9Nh84hdGZfA5uxEiA2LQWhxhX6ZVF4erNc3Hxe-j33xkK9RDsBtSAjatSXg-eG_cfelaO4rZgL-qo9slGrGf1kIaALdpqIQoaz6dnsRmuLV4TQKye_95)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/M-N_W_oZEJ1YJ5xG5TS0eRXKdfenpd1ks_ryYrbE1XijqLRR00kGZ4ljLqVR8g6tBYWTVWDMN1eUPmRI4et1Pl70WRP2a4Cm_QDhwsg-b0x1OhWJScmSh6Ccb43peRSo4LNN6SINPTZs_lHOQbmlHV9g2hDfnKIASvJl_pEw_x-NvrqvLMqOOrLI)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/eX6tfhrhZpREHAY4fzzX3rjfYlOvlyv4CLnsCwevlirtGu2HUvu7SBP2hQ4hkMLLVtN6EuNvnaACmK41LooYfhgjVyRn3o0deXe-VQPcGzMqblGh0X3wUwZj9lMl9wEZLVfp7rYwac9ElEClJTrtP7fr0g9nV10vKgF3Y6wIP4rX2iCa2Yh9Wmm9)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
