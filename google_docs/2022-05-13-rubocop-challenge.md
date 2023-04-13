---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/4eNpYTtDB8Zi7F1QFwgsseFgveHgifJeBA5cul-sZe-NFijoz_Ae8aDjp1Gdl407QDkZNyrtI2hVaywCU3nLyEVLDaOSLYTUgmlnjEXYDCeCz06tFa50vxZC4OLO2NRr3HTGeLDGqRYQq85hJBPhiw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/_h7hJ8m-a985V-r8JFHM5YqEfJeeaMdCM-4AHUTjmiYUJ0L7MUjLG4VOlQWOdxuI_hhRpvvt9_x9EBtJrfxly6h6v28dBRe8PzD-T8HJn2KcRX8B_L-VDBZg1Fclfbm5lxpFczdq5fyQa7Xyv5vypw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/Qyr81D7qexqvOo5_zOGnm9rd8QK5FiiQAVs-wSUHlYWtQtNASHY0AglNovQcp12XzcW8BmLsvUiTeBGbmOBk02Xc3xGa657EADnAsUfR6pn78Hv48AAZ8yeU1--DgNhk00IKbcZBmuj1E4f0Oxeshw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
