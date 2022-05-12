---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/-MQBGhfPn1Ym-P-1YDWQTn3Sr3BV20QXLWDnbs0iNsVa93yOxiv2tllIY1sM6-QkbMyNhSv2SpKVuKrkVOv2KYOK4keVW3vMlvS3TqpkeFUNiAc8dsUfZB8Ogp5nAgsgUch2X_TWf9-UV3vHOA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/V0l_IbBGQKKzJV3nefz-6bPPmmOSaOtC0kDfa3qhQFb4NFM8-outj4_JfeOGOLsKTa-eiic_Rta_id6p4Y9_9bRufjDTRskeb_8apwve7td96OZ0MqDzShKvgep1VwpIQq6oN-um06LzLKB1CA)

実行すると、Pull Requestがつくられる。Style/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/3LHZEeeLaxDrhZUpHc8gFZuPXszTPhiJpSfjyHBFKsAy2gWMsGbzL1AHy0-VQq-GPE1ULGDzpljtJ2ZyRBKxu-vtt4rnN3Sxo12yjerS2kJbpa8t9vj3nH1L8P9yv2kKLy_IXfSn_P1BnSZmTA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
