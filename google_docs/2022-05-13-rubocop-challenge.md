---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/tViuy1HZzaJ2SiFCSETqeOKTyznNbwnGNmXTduFzSnpt3cX0l-8pPZclWmbRD0tXgYxwxpZ07gM_jyI4tFL35Qu02Kub2RtxQTV8vsqdBqHPyshP6s_kjVF837hMYAcZ7HWM_2RBBs1pXeoUkQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/ebA9IHMGL-Rbuyp3-b0-BK6C5BvBKN669uilYSusZ7Bg7qn3vt1RapAp2C4fdfLexE9E5nydn-rG42pP4zRHF2tHZopXulBIagKf7SQCP7-rE1MyV442CNn9nMOihK-DQPm3ZUS1soP8dDrHkQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/DZy3GqYjSvNPt6gnmxBm9XbPkK1iIpWWH5c5OLas0lRin--uC6SGVIq5Vm9xTNvjpIzWFfOwdmN6HiCrTRC9O_iwXsrC66_Qpey28mIkssOInxnUFn4BzdxI7_iHjEC0eUolZf4wXj-DEigJUA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
