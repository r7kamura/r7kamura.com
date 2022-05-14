---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/dhOXdPTI-CW7XK4xbwBbFgVJ7XEtmeIFn1V8XCUGb306YtEYM2higLx5gc7QZGNb3SdYGJFv3pi4OM3wTtH0s_QWdW4z58iN1hum1coul_QaMOeUBNMm8iSbOfQ5EyaMWmPqrak8x59FDDjxQw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/HN2l7ZpDKuzwh0X2Tw5KB_A2q6MQ8E88I1a5Rlwk7TGacY1q0U20-0bSzZokadSVsI-nIeyrhKj8UT9nJ30BKkI6KrmTZ9cq1UCkB5-xeEcJSeW9DpT2i1zNPPT5tGsNjhEeOZuLX9-9OCQsgQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Sp5rzSkw4vmbllJgBplbFCd8ToIJovGiRC_bwd8t-8saPmDt9ae9psK9gb8c3UiK2g6M9iO9TmEZP9RazfqVKFVdvVemaC3kjcdTzSD-90lDALhLEPsDILe_IVaqgPGDxrzihUrpdTeC1QNGSA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
