---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/weurc74O6uJAdnCiR3DkG_yj-5ub9A6s4Ny2z_pbvt0fFPBbSwBZjw6cCdCL5vzr__bxMRm-Sp5FqlwR35JP-62JDPeH0HCPXWeiyPENUYxf4ihj3g_IhVRzS4qSOR84Custdf4xLh2NYuimk5sWXcI0dMeSBXiRnjgXFFsryR2Wv1eWokscp3nPTkbI)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/tMYnzEAlJPdFAvLEidlmzstGjqu2YSiUWq2Rff6ahtkemzpBEhPZVZXD9jxrsZqOV-lvHbuzjHaMJz3qMS9vewl15PyyLY0jmin7o7xL3Uu6Co2o95jmhRheDq-cYPqX61Lc46BwrCOS20FO69PW34GhSZOWxeEEw8fat8DQHAo21uf5BVArtIK_B4ho)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/S81YHNKXPTWs-L7aqUifRHd9-q4q5e4XiiQv4C131f_UL49lQbuMFTK06CtRRnQeqhrcBQ-YbyAPWf1E3GZggEhxdgLJARzxRlJHkCMEiDDJhioc9IDTtfwJPvKH9Gr9O_Zi6-fKpYyG4EiSD-tgZKNK6I1ds99AKLG_m7fZrQtGHxcMVDG718H143Hd)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
