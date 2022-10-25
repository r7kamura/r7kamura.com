---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/kRHIXVVAyj1DekpXjcNcTqUKSy1Y8s3wMvvSNYmwzyhESWA-Mg_ZZfGE4d4kHbfArs4zxyUxbGiidMkE2xbOwRdew7fvKDIiMwwcsPLGmL2lkAyq3P4Oo7gdIwYVFaBl_Gl7Bwf4XK7bH_OR3HmuR0j0yYJqtSotIuOW-tbrDsbEmp9Zl0RFCxtx)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/yQHm-oU7SfNDuLegAwiWjZNuS9nQq82hJH1-Gpp6FoLKvPptJcDxjuZQJR1zHWGFnSJYhOlBW8WZvevE-VUYTCv7BfoQdianVJTCGsDd8a4iB0CFOCKJV_8ggwDpHcIDKUUhbnsL-sBPwvCvtOvvPFHZjN2V-B0HB9RnACgghouOcsKKK7DD2ADo)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/oVD8nmaZ92vI3b0mYZkp_6Mkb15Acd0MejH4HpDZjQ_lO02Oxl2QGlsYpupAKbf-q6toqP6XeI6khveqP3kxn9u_TCj9LXHykEyUN8gD-rHsEUfSLVRFZvxA-rKQ1HEjwr9mRtmnT9CMe4D8dPlyPnbp4BxLuFclk_tdugWrqJnu3Gk8-k4BWXCr)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
