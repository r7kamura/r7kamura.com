---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/wfjbabwtMxRULNda_is7PKvErD0VL6kunD47n2nmDbiZktt29IxLQLWvnE_ejOP_spwP_j08j1zuIzz47iXEwnerOT16XipHWsSXGLTseCEV-sygChfIN55m6rEsNsSKSZ9JEHbwF7UZllL1Dw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/WsDGb8igMElZB9a6s0VH_-HFvosMX_pIPWnGujm8rqaCJ1S-aoC19FBzkV_SleKrlj-Nw5lkP9BDbkbHp6xCMLgiyZ3HS0t1peLH7gPhkizQhiysL2wqBx-RHsoAw3kqBZ6hx6Nmp9a3ZFgtmQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/R9gfk7LKNjOdKiBLPLPb3H5In-Jc7egc65n2sHAEJOj66sunGb2ThSBf1V6yYNGcNFVKAZ13a5zRBZ1OliIPUAGbXuu9HlcDiA5Bn5h1lt_ffYySoBLu9ustZrAO69C3VPJsw_cyF-63518fbQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
