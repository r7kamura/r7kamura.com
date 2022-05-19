---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/gS952IT6v1d5lWDG3zl-sqLHugrdw1AYC13KXbrG7CQOWLHD8GWoPynE2o_m_Gv_ueLw3v1EomghKs_aWYf9CkAUi6Gts0RhxexvUiCPWK_5nPcxF1yOt_j0oXL4WvhJclbLvLsxvD1y8lBswg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/fpAZiCA8tOv_WuLxrHST2LXRb4Y1Fvg2PvO8VTq_aUMwIGDiibbb442-CdtR6Vd1hiXz0Cfsf9xKjsITu2_TIFBoik8W5RkjfMrRDMGMmSz778qq1JeCns5-hUoWUe3Lb1h442n0mGKq3-f86w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/ycLcwMqLldYkeRLaZ3oIGgcvLKlx6uhFL5yYr-d_vTE7WVC5x4G0sgRKj7vax8i3Zkaz96k_uaNxknxLdxvYb_KzjDmSKBiYOcsQ-1CHXxUMqPQQlPOkIGg94XwatzjJOs6LxU8cPsGNW1cjZg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
