---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/TwB8CRiWhFNiJvX7heuvv_uyF1oj3v86xaekbmWtu1UYufSiOd4waYAiYuLyNGZCJTAbRQbWHKEjbvla3W2pEl4UncI2hDm2NHaGAgs-X48ZCW3bUSrCVgbSlxzfOCVHmyO3S8G0NkU1WgW_SBz39A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/jaXmAjb68ljCj8gdZm4iAk47RwADDQBbjdIrVnlzVixing3CVdu3ybQipZJlt3QGpbhQdL-beQkjVUs9WcVBUHftqullxNt8ZIXeAsS5lEN-WGMc8eOG1ISiUMbQHpN2WTimwWDnlAyQbGrXiO1mrg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/ZlFgqLI90AZ0TWOT5lW_5R9cwlWrDpAM4chDppsO5YZJLH3xRCoPGfGDoiyPJ13DhbdeE-T-M8O5WJC7-JEtQo4epIqjMvTuck_lOmJjwoSnqKTvEfkp8RTs_3lBYNO4axE9ElIeTvKtxU5SvOeZ6Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
