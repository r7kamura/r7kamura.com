---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/iD6NM9_v8ZShMIMfw_0z4LXx6d2vBPsZwUsJRwHefVDukZCGahR9fOO88kZ5_My_5aq1fphZcnlr4p7utR0B4itVEUaNkynD3JMD6TPyZ00kg-rPuUnaz2tImKhA6cNRWRqXt7wSA0wayK3CPw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/Cn1SpgegJn0-cFJo7VirAyK5yS9yBdrbOyFlu9pLLrabxB924xcIzMTXQaQE2QflxBPS_XCKAm-nI4Gfsz7Tv2mMKNvsqtC_vv0PvkpdPNW6pWxZlLwgnNG6uXoTGzlleo2BjOEO4K-YkK6FbQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/h2r3K5iWlJ7eqtz4mikxEZ8Ngcu6W5Vq76JaONOsnHw3j2uhrmUCx1pZwQI8VhJEuAYpLQrwEVUGkoe_pCDx82nkhubgHcwaCK4GmGOlvDx-k_ZTx5eL8A6mYrKdCvgs5hmhVnknsEIfHRxhlg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
