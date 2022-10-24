---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/EF8EkwfrKsG3J3jsufGJ1ydSMWCvRUrKgLuNVce1UWMGrirnrp3ZyVPAGToNAJaDFJQmozW-FzHyzEPCakn55OU7irjofISM_0eOVaM6J1V3a9xf9z42qXAc3H0D2SCTTPKgoVdaE7BO0V4_ApIqiJfZpMsNEFgzvQyLOzDDtzfmubE7h-n0US8X)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/5D8Q_LThC42Ouo3V-uKXQxRU5GW38UmBk2sx8_kecVB0Eog_laKTIfjTMBk3guEamtH2yh07gZQiTOq8e3F__14UpIOHlJ6SFEk7xk59HFtqggAR23xLF2BMG-5tpeJ8_XpbK1kfLBw8JgibtWmIy7jJPuapZqeN6BTefMovJaQQgnKiGksSkcxE)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/c3csx2SyowHfT31mk0qD3-ezdFFEjfz9xKlgoTH2lJP3UqjGp2j7HUrrXUQloD_ZXkP0ntqwFUi6ysVtf7oaScTkLgx_wegvyu6WyJ5xPaTCpni2jXb-dKKJVLIO9ThgNmm9MUqIVKtgQaKoC2uL_y-D7tLThtwGfdoxfTPMNYl_4Xff1_ODBHKU)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
