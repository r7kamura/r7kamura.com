---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/3dLi9KbDljhsSWoIVFWEeyOBVCpfX9JNouFgZNYS-smT9UUtnuvRQ4LMDfdHWiAdLjm9Lthn72nhraD9PThE4Gr4lYMRYUuQWe259q9W6akZv0f8tuTa95PEafmv3UIHLPg5VhKbfsmHhCYjdw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/rEgWBbAnRHyOgWGRcvEIMI8GQYowOaDdIRcjS8yWO0RTEbDmAZts-03t6p8qa2dhTAWSbAndhS1z9UVPLZSuJWzgHY_4tR0Au2QjmUgL1WrI-1jONTRbCcgrJKivte06oWlc9EV6Brr79JSOdg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Olt43kWER-bsEbhrp2W1w-rlB38tBgGunWjcrx3GXlVUv1MLDKtKZw5jEoVJRHRO_GNG3FiFjslAJT_EiWIpzT6T7PWWDLwctxIqxEv5YtAtupFskdvEb3FG8LY0WQc55nv_vWCShmDKqUJ4Uw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
