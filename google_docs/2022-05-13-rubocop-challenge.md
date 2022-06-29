---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/s3fq9iP1INpCkX0qVnuU-ghnJx6Bg-eQ35yqdQM4oXmMETfL2P7qC3O2VFVlLgfzlSH0h5OPdmDVdVjTjnDo4yPKgPhm4H_B9xr_inswHUdlalh5-rUHhfZbY9GvSHW74YjnqTG6sWvPTFb_bQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/5zwtWb5rF0fOq5mzJ0QGyc-pvUjWy7hOPBMKw1QORJH-2SNh46Qcm7RjvFSHjGNdvDzFqaCdVSYBXAp0LhWRrbVX0GU5N6KAIJv3xnw-WsLUb_Za-zsq9YpHHZCUSv2AHfk_QQxtZLoPHeLncw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/jH_HsIOaz4xWezrhc9JX8lbe5IfHACM-xzmqxZ0O3C_v65Sf3MDG5NNbbWiQf-NtkDSTNPkLvkxDntbfe3gBPGiQ_PQewt3Kk6J0c1j2PpDDXYU6w9DKmsMnB5Eatl7Iapn3x7-wmXA51io5tQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
