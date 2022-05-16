---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/fqPQRDSHYlgErSvJoxF7U7Ci6mxPi37Q1zWYgqsoq9Y6-XKaZmDv9tKa8dMc0sqUrkIwvAD5RKwmEOvernKgJLHPK8jpwmcYYjWCS4N3qvhfCvfNbT6npr_-j5GO6uNjTltm-tEyvCvRih00uw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/gPvNvrbFX8RgKja0sAgtk1b8lhL82aWcaMThh38VV18e42M8uXhvQ7GYXS3kDKk2Eqr2hM5gKXPi_qBitqZr-TanYKLdUXOchx0Z8JZ8Tf0tO9TrfISt5R1UZNZRcFdlYzVvXgvWIWgWCnjl0w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/4SIVntnt1_G5h7EuyUCDbHU7W7EWAKhHxn_3vP2SOaeS9AhIiwXzaZ68eraOQy-A1X4iXqWhYzAPtRfZxMH_QII63Lf5JB0eg_64UZhyyp9QZjfvKJ4ECTCGWqEbX_z4FT8t287Rh7nO__r8Zw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
