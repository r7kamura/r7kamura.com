---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/5YwFJ394OzPYCr5GI1QjRii_CcgdL_rg1uBvIzSHm1X8K_O4kSF5zD39sTZbKxsouisUdaV8pAvZvt8WXiQ_8ZhLQ8j80qX6iprH6c2HlN6RG78bz9Cuhq6yX7wo8Z90QSq3cBfx4ATKW7ptdQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/u4631TLRB-JQW13GCWrO7GNgyT_9sEKY6CurxYGSNUqYWme6nexmCqLhLlS-nukyXj_rJ4njPw1X6gnow7ba7HbOdt9caW_tq5-tHIp1XlXIhijHE1U0dG3AurD9QRlZq6YKDxLMMEKWTNog8Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/uCW5-U_Qi_UP7M-LD10quN6YfapL5Xq-ahuSunErmSOh4uu1Uxmii1Mqm0I_L3WrqoHFOh06fwcokvZoIidPK5xhCz_vJGeRQIpSUxTxqgvFBbrmcCbepCnEiNBWwiOD0BNohmxXTpBToVxJDQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
