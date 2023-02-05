---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/8_MTpe9Lz7Xnpqe09RqGqA9JbeCMb1h8A95kPOT_z7iKqbLISaItdY3ep9-SlShfEvKSfKOGLrwROR_EH7Lyk7OoxkNSdIS0KM9AOwLTzx_zIbirQnSMVqcbKRGUfijUkykhooDhy1vPfrmGO4ek_w)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/AfNG8ZLJj325i2vZRenJaRVL2MYh780Dq9OH55YSpbpp5F4hJH_9mreEn5uPDPvvfYa2E8LEbH6suB39mTZ11wOGhEebm-m18V9Pb3M2wXaLUizE1lamtr332WBrysWERcAAW18YJEP0ZTDeJVjosg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/L0iwCNayaedElVvGOtBy_PpbtvbMmmIlOkqYpQ8bTb8Kt4NO-bJuDxd-qraeTvmIXmlzbmSbP4VeuS_TSVH5xS8pJgX7Ikk9Draoi1nu65jjNqVCmh1XwdD4Ac4GmwYjqzh_h-REVuuQLXhYsgNoRw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
