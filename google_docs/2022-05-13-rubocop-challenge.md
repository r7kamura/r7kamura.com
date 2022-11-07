---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/2NObvz9q-JHnE7sPpRbK4QYqHOXrU8BnelF0dhHSlITdlyu30lhyruBJJKge2XbfcDD4U79tgX6kGAURKsIxW7BSoaQSCgoDXl9kS93rCMaa7YhUqvS9zxtD9BZgQt_xFP74fExVZ_fz9wOu0TVQc7M0wxGhqXflAhE4snHcZBT3zof_WIM9E5iq4dOP)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/RziDLDaStX2suNfNefvTERKmU0dqnv9C1OBGKgwwlg6oyrbgcnHr6CP6PWub0tqKMI9eSOJDIa-oDwFjQEy9qLAe3l7Ftx4q0SAl4u88R78nzhuYdORsDVMEanxLW4EoEkyxRxjKwhH3VUd30CoDzv2Bu2Jp3Tc25_xWWNtMlp-_2N5jekeUrh6V4Ouf)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/gcaFfCCqFxAHNd48Pv3oPmhm7u4uLWRwTL6mQe1Bsvy-Y_XN4xcDv_4Z9SPCh6eea1Zir4MYj90iHtZLmYbbw5Lqa-ISNKrVAz_0tRSCDZF40jkb-lEVYCyFQUkMj99CS_-J0D_c4Dd9hkGqGCBwaKMYg27HzOpXm1P5MhhvJ0ckBtzgbZdMlJvpBf0n)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
