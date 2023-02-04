---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/p-BbGEGqF2rPxQmRtfr9VrvKtER4pVfkS33Luji48aVxjksfY6mmaSsGf5rWQ40hjC_FHlkmkCaKj360uk4RiTD-h61Mn5piJ_ye_11iH0sW2a5l4jCJfiRf5pzOBfkiCOvtl0uWCdswj3LIlepWsg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/gwThi-ObF_KRWqnx-4BpTUeEnjFxFjXQ-4HVgD95uLiGAglV-xNZxXhs7upIOKEkT5KjMqoVD0qKl7zET8bqpjyWFVIvg1cfiTGuAtlH0E8gAnc-DcPzSeCisg6Ll5SH9z_clfXq8GHJRSZRw-lABw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/kb09Saje0QgJA7iu4f5YTTvzo98-dm8m2xK2vmwTF07Jqie1sLfMEEoE38y9fs4tKxECjYYru39NGm8eugvzuIuOiMPcxmOVl7wLjSUtAj0pHYpWGrBoIrIKTPyqqJsDAXctH8TJSqy6EdWMQrgeFw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
