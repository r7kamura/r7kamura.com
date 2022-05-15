---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/zHHxLzM7S0M6qUAGNC-AOGQ1yj7UDoSy0Ct13Oi-NpgtvMX0wnS1-GIC0Vc70zHCTORSgMeEbCxb6n905FWi42wc9Cinie28dqcxEyEjbtlx2HPXkKVu0xOVwYx9_zZN9zNQbd0HviCeADVzHQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/_M_v9d-QUsn3GxOpL5aJUpw_sP3TltTmbUTeKSSdp1AhVn_hHf0Ty0Tf2mRnFxok_atw5sTJcBcXTCLYLkPL9WtREmdAZ8rEqO8eu0ZpSZ40OaJ8YOKEnva4TB3Je1pRKIAVc5Eqhk9bRwY5kQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/TR1P3VEz9mpw0ZVYiOZuw-3mdb8BIz8RQzD1Ygrch76-lhwA4PscKXSplGjVxTl-eue15m2kIq5WjPFCUHjV-zoeQ3ESeBVLmpx0qYEyvpKouZVnD6KYSYh0avbiraSI101KVXUOEeMF-Ex4jg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
