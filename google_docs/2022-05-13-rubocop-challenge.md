---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/wVN1D_XWCyr47lzw7ryylKFj9LiE1uDMeNL97dVNQqXGP8QatUbfTLQTXdzWdpz1QuUH5QPBqRZpp8LONFlnnOJkiLyOhKCJoX7_0O7hGzXBqQn50AxJ145JS6q4PLJhkzOdvtJDl7yIVvWKpkjF8ePFBxuVNkSb5Wp-ajRrzAvJ6NAqdaSvMhEsCCOC)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/wT8QlYDBBfPsJGAada51unblYvu1U4dmb1vhbWW_z-PC9WRL6Jcka130bjAARZi9MUgW1Gm-ixmSkh3RQPNcoJ8fT1Ag5tN4KFXxuJR9lNR6jbSCU-LC9KmWefVtmjwwzgKo6-NJ85eVsKV_2vsMmIIoC_l606zCCphxvGoaOfwE_5h_LDDSaEZAGE5q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/YU7k_bbl-Y1oW9eyaxeZcgGy23UTP5HugsloiH_g5R9qXuBT80LIDHG_dUf1QK6sOfb7gsJsMIWzaIxt6NeEJNP6dcMKBUg6dNsmdZk0sUoFYkuwFnmywiQ5pEJSLoeamA9-9eWYTTlYrHz8Odn-eh9LeQ_lvFMkBrD2SUg0vsO9GAjVVCCjQsRtEHkt)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
