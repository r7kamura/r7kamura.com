---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/_WSXedhpK4S8LdGssxU9_enKtpsvclqM5jL3tVcmrG1slVGQX1xnfLHYfdAgu6F1dMuW9UEa7_Hq9gr0IYawbSt0_W4OsvPx31nnJawQfEhVJahvsIc68-g1-6jYGodE4LeEVJi3AueMSlZeCA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/gf2b9f_LwMpgMWUeavhx2e-CTEX0v5Ya72OIWeKa61kUL4dK163yfkklMuhlDNcenl4lteiU1ozS7BK4o0KjrI-WM6OpHdaiKgpM88yX7kiDRz8OfExLWnxCiUK3WNYYp5wDywPSpNBtuKYDtQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/kbnvUMhXvYik72hy94SrKopDgF12Et0WFxQ6P-SIiG0xJ-e1KJGf3wKkZpenOg_k6nWIg56W6W0dBH9NEHvWTbmZH_hbgZqcvtrzgNKjJWdVFQVJHpav1rQqr2TSUbHHTMVVXzYrARQiTmrnuw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
