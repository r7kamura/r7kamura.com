---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/9Cfw-yI_L1AuP9OeUKAbBvTkn6E0WUp6lfV3mTDvTwHbUl2UdC6p52dSGBiYCE9AvD3_Ll7ejV1WakI8SyyPDz6GQZyIlQUH3nvKDUlKJ5SN5va_-A5WBgapGnZEMPJG4Ajt3P0dHBi8jqXATw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/on_EtYCVKo21yU-sZFPKmBpQ42F_w3ArSH0FOwV1boZdfdqZZlIp-BuhO31leFzomUr4AKAZ8neagwnkopouFNCuWW4U_ttDoX3mellM3seRepeYaqFZ5WN2COqK6EvcHtOk1vO8RsGdplRhEg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/rAArW1cvEZ76DP87hpdXHcN0Er1QMM6JM6rAIxXUR7QIgtZVXPX258Yl_Y3JfTNm6qe1vV0vZOBJjs7Jdj2tI4LZLopxLazEKSZxYbbgeMfvO_c7mFydx8i1dMg23eyBu84i_FXM1dUMBTTmxA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
