---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/qR_Cs95dGGHEvhVdbUgPIFVr89nXWAZVV6RARAb1Sxp3LyUGbk_8oL6hcVHKMTv3u-smmUVaMYyMXxtIeLnA20m2CW2i8U81HG1T6S7Hn6_vx7KxVEogRsF04Z5tYm0XPFKZ4s0q2Wj3QulZZH7nTA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/kLDw_TT4o2UlKIibbe9PSwUSK-kd_eW9EICujb2Xb1npbzbTkrExfG0UmooFX5QEFAmVhqND57ofl_qYavtjP-BAUCgaslPxZs-UqgK4AJvV-Fpz0GRnM1RJLr8doSdS3Vm8AVOaO8hmgv1OBKJUTQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/ZFgqHr2yUSjj389iFODH2pyLhAtbGPCBHZkENSd-_c6t9Rr24dEbUaz-X8hQkENFHBxRdbYKMK3OFX2e6S6o2WCdOYUZ-5-mqeDB6qeA4nYFQF_zzrgy_IGaunFo-B-hkqaRtEbMmXYwopDa4RMAGQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
