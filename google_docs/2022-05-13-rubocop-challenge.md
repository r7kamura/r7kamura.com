---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/q70pAdD4Nh0W_N5YYUM2vfYUx6icsm30O0zdYK_g_gEDGJnb_EqQHk1qamK0Bnr7tz_VHMDbu3-unetuufkHuoB2Ff-thsHfhmToqUKIatxI2sVaTVwVDGmisqGyDZ__f5ImkK6ufoJAkH-UdJ2h8xejKnteprzZQHOGrjmjbbSxUD8ZiZyLuY0NNgsx)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/X01KFGzcOZpmxnGJjQRGbHG84jhWZ4b4pRZINas_nQh9KDuwwHjU-wGO60T1h16Nz2ZDpjqassA7gYTf67azXQFfZGv_Uhm2QUZ_hrafME7nkAj8YEnMAwTMxgxyQhDocAu1HqVqX3KrdfpkScWQOjaCHf7cX8l3QJZC_bapeep-ZufvXrP5aLLsJUQT)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/aIyD3XUQQOJMe65_GRVEokjuNYzwfjLDk6htTsYrXfV-EFS4bIVKLmFkhk6DQ2fbxPCnhl9EUnnMtjiNyRHaOxVnWDTM7KU3a7DPpUMAKOqw1aB9-yBdhPlJiWqwBaOgsPQyrp7EH1skTy16RgsVmnXvJbHoM2xtRoQOSWJD1vup9K1L7xuzs3qtnXd8)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
