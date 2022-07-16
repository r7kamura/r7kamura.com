---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/cDesbVs_6Q8-BRovAXzQ7HSDMZH78X4kRHXgfnFnR9vZz71EQmOp-14XkHWwf6UswTFeAKgXY3PEghtAESotZl9PW2AQp7zEyoiANvU135pTh1cP0HVrmY2BIAVDN_QcPcOuVnBAe9P6BNCXlA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/gUhI5Qgui82CZL6jJXJujn1SPZgKImUIe8sKfvgXIbR6sA6FcZ1UbbqJubCww-kW44PF_HOfUNNjfTDCrdOx9tcPnbw9TY2xHbavuQXqHZxc06sevtlbE08AhvpA8_m0rUwh_geEkeru67wXxg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/MD0w2Gfp5cZkhczjRiz-BsHChIRYcsgg-0PdOxsN6Qcg5fQCOLfOTaQTJo2q6bAvTGVQYRwlxUomrligiJ7S6cedxZrXm117s1mwlia9LdjayJjkkHT7GohC9F9b6oXI8w04dKxwQbxIvPzA1g)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
