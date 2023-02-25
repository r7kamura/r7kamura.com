---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/xmwAiYRpHAuYq5D45bnQ-SYwdqN_oRn60uMHFqn2Ia3S1Fh5-kNnq4rAWU-fI9CpVhgIpu5ewQge3E7ZEULvvBz7soXF-ox0lkKDv9TU2lJNzpBLdh3P3X7U6GBXkv8vi53vHQ8pR_aXQTlXe6ftfA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/9EyDBZre5-Hbrc8Is3XM6qwk79KQd9KTKvbWd0-G22CSu3Kf-_wqjGPvcQQVomKmZcSVltrlR-NZcL4OjpkFd9sPNw7vuAAgnbJs9Lj724xtigsYnEGY7xnWcNUuMQX5TSPSUzKPUfJ4SHvINdh5rQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/ev1BexMV7SkO7BRms8XglR6U0HhDuR8XnEpROvxjLVQCnlssYyNb3bMS-a_6cv0XrfunJC1_CnmrZFoNrobmqeJ8_L6EzUIP_yM4ngspDCxjqcwiJIQzWQVh6Ea_U0h709QrU_LfWjXbOaiu7y9KSw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
