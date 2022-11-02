---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/p_VBiJU6M0XG3Lw-fCg2FIu_G3PsmBCSW1ZmQLhYUHrD7oF0-_0lUfdcdvabdPMSZhGebs1WFu2kDnfiirvOi0dQVtSwMDzqEJ0UJ2uR5ZUD2az5rPof233X1RvJqj_ADNgm1O5LWAkMm5WWaXbavYkHLIAYECfNQ1ZPRBzQbwYrkn58M8QfyAYy28qF)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/ov7gWY3rgwP5XxVKpC2kZr_nIuCpLY07vEepB1YaJGf60so_s0SVVsjgjBOJSrkbJEGgZ7oKsmwVBa_jlcugeniBsIpjlcnjMnNUjiPsbOy9edYGK2Bop6lJsnphRrrfoOGSW922I9VPXnvFkXIvfeUmKmHjEFmzmvpGg3VoKQtTE2YBylX2ee9xpAYc)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/8haNpTjREUp-P3o8ZlC1Q2IV9qMSipdBMvuNLbJWjS6m-G_ATbF493ZMO_2i202ItGNPVxlWDsi7WKeikTEiw5CAWOOUWscUjxKDr4s0LxdR77KTLAl3BmsnvayszGsMoz2Jqs8YWZ_Qa6fgWM2d9rvCMQS8N_ni46mK-dPgHmEea_KiORMMUb-nRZqU)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
