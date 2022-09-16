---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/3TJVGgxQo_d0bemZBO6cri7jqvWb-Dm1nLUBxmRPczdCw66-7YaMoqrY0NmD4Ov5N6x5BxdTVtG3IAR7gb0h4PkH6_gZh-mE5QUkRf5anfDnwiRTgwEJ3qoHrjsgMkXwvC6REO5e3RY7QhRSL9SREmAfWueVpjj_nqs1_K2KRvsbwrCUe9Xs54oQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/ZYJRGB0TpPV7cBVmJEj6h3CdiKjlCCxztA97kypfpQjOgrp7NTIUCWVaEBanCi4gIgMKwKwSvrsDYzxrNlidHMcBVOdznt5d88OkAEjv-PM2Tkhm-wJpNtWGMUVveZZhU6uZF9ufL05Up9pIBkkshHmmdfKoi6t_M81wnVGw37UPTngtnXMWgr8Y)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/ZRMMuPkhcdnbVvisINZzdG94_uj9DbvjH_7GkoRu6wZAc_yb_7Tf1_owRzIRQok3E_YKSmHahFiamdskJCJ0X6hFHw_KaUuH-PTwDKkRX6ROJM0YbSH8Vg6cngZ0QpJHKslXVcuVRTTqNTeYZj980RBgENhjP7cVbL6LgMpERoIH8H4hx2pf7tD6)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
