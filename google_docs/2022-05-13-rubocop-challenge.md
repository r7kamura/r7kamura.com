---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/v0L1YMxj_P91aya3GokmFr0SVicU3igS2pQ63iu938nYDMyNrEHzPOAhaczKJ7rbyrxLXUdsm4WHyKLNR9i0hlgzNe4o_zJAdx1o5fRXzAsgcvJhiS026udDHPK6O-_sZ8Tbt5ppuTF7-1_gpg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/kFoaqy-zALBvNJcjRKoYIKlEoFzheqOtqYbVSyIq_4c8bEpsNYUEDX5aHjn_8tBfALzcMEc7tocSI8yINE-3F_v8i9g5K9CwsytY5tnLvZWAIFqV58k6qEPWytK40f8Tw_njvWl5vKmFL9FmrQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/ahBcyRLy2oCJiuSqi1h-_EndbLULISyW_PYzEQtPAGRI3FPpcIbxeB4ifV5uPIBs3V6Zv-VpwYVpAo9VOLJIz3LgoFTuqWEhbQi21lsF_2YnZtlQ1WqNugddeVnw1E34Qzw2OXDsXrEv7WuueA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
