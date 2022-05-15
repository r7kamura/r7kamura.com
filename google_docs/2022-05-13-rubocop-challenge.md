---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/7obzlMC5i0rFOwBYtkDy5-WHoOhwIBm9Oa4dC7DinAiztG6RQkbAarpqY0IPkFP8V1RQVmON4BylNCZMtwJk53751PsyDhbQF9SLUqT33jYjR9vNMBtfFwDe5BIH8-VWLHYLu7_w2uZa_rY2VA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/DY7l4Tb7XJYFNOuQzlheAq4APxArD7LreWTITQUqL4RxfLB9sFrJRQGHXQXkd0XAibzdUlANEvh3D9fkyIaX5zUlpldcghNYXtIC0SkqoOGIR3jWSsMDmhPPOhrujm5P1wu0tJ5wMgzFOKg55g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/jUyX2sxgNkpDxbMRcU-j9yYrdQJO1rkx9uhygYvwuxZYk4Wb-csPiY1mxaoyzxEfFXjgEw6DS70FlzDDRgIXNfdSiQ-h1G2y4B-0QagnlnC9BEw8cLbezieM4i3S3VfrnBgy48tQYfp_jms4aA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
