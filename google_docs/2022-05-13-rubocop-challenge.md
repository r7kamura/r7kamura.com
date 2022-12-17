---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/SXMItEWBrpsnFXNBsVaqrg0_o_Fa5YzCHl3SyXB0YjvCe8ve0br9iob24ydQUo5PdxvD8lhRc0S0TIaGnnIULABPNh_eJSsNoii_wtOFpXjSr8SvBf149yWtb-ArzkuGJcs5NyEwvps_txkoEyXcYEE_y3w6KD9yqZ5o12eqQTIq6qQqYr30PbvPoW87)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/KJuXsGVH3MZdYylUl8Ki_gwtz1Cvn837B3L_XIhPuONB2Xl_QDXiGtVBs9d2PqYA6i55QPOLSF2wuvNYs8Jo_LbhUv3OOCC_NEvs1Sa7ijbClNCEDZ0ty80s45XMr0Doxpm0NsfoCNbJqhCyQUIr7-wG0WMooRTJ6wSBPEg-UqyI2LD0qFhfK43sxx4d)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/jrV3txC1liJ3qVs8oIRmh7K_Qbp8bx5fcdzjlI1R85zGVQtwdSFYVlIhdnLbPI6gz1hdrswr5pEBb__9K1fGh36e7qrAgscoj8lS7HzpbzBl5aYOFz0WiyA3AcwWTJLRC8MWyCtFcH4ZIwAGfUzafub2huPbZ9UeEdw9MHByorISwgkJt-5lEtSIZl4j)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
