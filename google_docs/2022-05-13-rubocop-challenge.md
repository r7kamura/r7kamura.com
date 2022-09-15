---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/xsSu1yfUwtkrWLCmzd0NqFkZRXb3f7mAtDvdfZfwqGjxS698MJAI5bEG4EvW8qAhYhxyX1dLtRXVqhyZ3kDhEkHfI9THE5qTEWWs8_nbxNqha77XXi9L2Q8IXFP7MZk-7epk_dSgy_9u4mCBXICouKjXW2HbriisStfY0MTS8uelshUUfRTBOGvF)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/dxnq-uQO27gK_iTTBbdsTaSx0hPWVZN1m4r3ncQH0tpxdWC2m-D8OdJgO-Npe62-hT_3d7hj4X0elWe21HyN7qF5bXOb0bHR5OhUEu2lMokgPnultxjQVSaXEcKfVMeoijTj8z3sf6y4zNGcLRVKTIoyD1xsjs8gVxpVpniXUDv9QOB2_nxL7iot)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/3JGvGSYHF1ZoEEiny7Gn4UTA0fZaS4L-7o_5EjLiQ27qpztHc6C2DXpX0_bU4PiYG15edAHMdWFLLwvR_XJdP-jq5jY3P6KbrOIsZuLvytj7fTseXQvfgdixXn6Vgrn-eKFQ7u95yjWUHK09z4ZWyPHVgD8ogZH7d3p0v0X3wM5Honf-TKqYlsy-)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
