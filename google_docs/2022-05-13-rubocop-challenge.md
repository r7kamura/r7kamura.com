---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/m6FLKgYtgsC3JCfmdA5anksnQKN3YR3QR9y-PfIYMH35O0UpzUv0ShT94zYaq8G-U-RU68D0gZEUhCB2n6Wy153gppqI51--7Vm2a7iUe5uQrZNgqddRZH9jSsv8P-mgM3lj8x_-Yl5qKGuCspzusdmVzieP_RIYxJfcT5RO3aNqcZ019M5FopkH)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/YEr9ZE6bCuMRDoQTQCiIpewI-27OmMh9JJWwVKoNLdSpRCiwFiOArlElCmKZE36XaWyzMb9Wi5XHx4FmpbPizz8BdG8GAni5zZZWMOMJp92c_K77Wo4QBkfeb5R7OcyyGKcn4rGAztA8rvJfzqpjRvxyaYverl5l2xT23QmVpJ8UagCWKrCoKKph)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/U1qdJQybBmQfxHtANXoEAVmHJIMt7q1Z5Fm0YzA0JQYWrjm866gw_kVCkaNgLBedJhU-0yCccFf8CetVyQG2Gv5VO3ZN-XWiXXzffmUs5PTmDgBTagwQAcIBwGjzFtnWzRFRsfAqhpe4XLikfchoIYhKNd6lstMTu4diWDiprOM3gzQOQ5c6HsGq)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
