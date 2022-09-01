---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/09bAG7xDhynSdeQp7KE8m-xhNZF0-tVu0FGjnzEzkxunwRqw5B4rGat_g9As5xr76rHu5LXnwqvBEPASMSJE3wr2Q1v035Dz7Pm2BiQqam21zq3i70hL6tu7l7nx-e7ZQLaj1QVkBr_dKfFEjJoCVDG7_u0mZDeH6D616KBGvFBTmo5MRLltlBHy)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/l9iQQ1KeFUnpX6kyvSjsH-lvvCvenCLsobzeLmwjVJw0Rb7JxrEn9kCkqI_39LtvtJdsdq0PgCaaCdN2SQ8z_so0c32AIV0wtOdX1j_8hl8yKIKmE8s2InyuAZt9Sq7M80o8RCnCbpHbGNeEvyDSx10dgvgF-3_HuMGSef-79RFlUF6V_twTU9S7)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/71T_xp0_Uhbz5Ee4s4Josj8_b4_lKC9d7_97VTHwze2GF8Vs6J9u2PCOfF_mnzwa9DP59TuFntbcMzdhavpmer9P-zS6y0WceqANRX-2UyOFCK_9FEOf3QAVgJR91u1KjKH26lEG-QowrkoheiVjktiksPetqwGDC0NZfup61fOcjvIV3_51ol94)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
