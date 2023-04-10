---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/QriTFKIMnSrogwf79faNFtHjVC3MQKFRAZ13JmalItWN7qnf-5-UJggtloqdniHfyPduk3FesfXjNoa59j5UcMgx9gsJVXs8CcPdA-rxlQ5JIW1A5AoMztmTDfqu1KjtTxhbX1PsW63vl-nl6QwgeQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/htcfSN94aO-4bGkCiErtHagBsCNS4PS8i0QXvzeMVdAe0T9LX0OLjS8o-YETjz_R1gtNx6Ic70Bb6VFS9cD2JtsBgh3a5PjXyX4aFApkDdOZXZnXARNNkK_Dh07qCRXzmVBfP9-934cPUSTbh9dbFg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/hyvrVfdHusVcCjMMWk_kt5jUngRiemKdHx6q7yB1L54lMTczuf-HNKs6bafjcKm2iSzt4FX96j_2-o9yT0YEsW5ei9atBCzTlSDICP-w3QnprIxmfaV-A6bF-jju4mSCh_1w-lGbUa9riL1yMUZCvg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
