---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/J9ICAqs9wk0wdjFr0xX2mrofE9HgGPL84EQZezip6cesCM0RvPymM0XCPiDMYUNM6JJsmSw2Igd4I0zRZ7oRdGVWkAEQN-oFBjYgV2grt56JnVhcVXFGQ4Qai6Rx24BoslEID0IkDn0DTOCSMdDmeA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/EcX1gfaugOdiYgO0mPidyeWxSNsdzQemI_DsBZ2wNsHD4t0qGWcaCMIypgnrA5lP5cNgu35q0n_XbCb_yhoO3ShxxNjI6_vcXHjuwquS9iGahnL6HOO-RiZWVsCpwRMiY9SXaEs3rzIi1djrEVs7Sw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/z4ANHVRAa3iqcufqxPR19c6WeY_FqsAaHrZpSphFBnJxXxQ9k1Cc9RnSEdzC3Nrp9A1PX160op4OHZNwz17c3P8hjzMP8Cx0yePvZm3Eko2VNaw2LOPshXuSK2IX-SGMejlxZ2qWrcsaVLvgSb-Cfg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
