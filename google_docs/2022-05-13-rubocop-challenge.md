---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/LJUsyIM9qqQsFnavdONhK2YDPgfLnQnedQZO1ckfQMI-R-mN9sN4UWQmJUHasvUthwRWYi2tnEOknuunuYzCKadGrNex9vxy1rGeqA04CrvMypArt6DscDi-0jHfLHnuXvaSeILnH5AmNlKsyw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/6M-fuP9J1w6a309LwbnWZik4HQ0BzlDNSY9gyH7xcvSvSsPwkRMxqfEUUjl84dPXSkXRIMlq9xgISCWsrs-A7cngypx7drNgdpbQgJaHMFbIdCP3dd0tJ3qDa7UATgooDMUAbceE1sE8r_qu1g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/9Ib37--6qsSqqTuZK5rUzp0kkDTbbLcmvVhiz_n8q4KUHNFT1_IeavZvbri9rUGnmgqZk3t5NEXx1aw6zyYeoO9E_6ab3ZZlqMRH1Zomz6nbWXWkCloKaVX9-hgrDJSx6PmzPZ1mGWrr5UGk9Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
