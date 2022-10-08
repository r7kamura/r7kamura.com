---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/0U-HmWAKbK3FRJhGl3IqIgT-0IXwN8cBiGaBCvwngmfXSJUOwBGrWopVuWx37GlAUqb3dTvWrY8fPVCuAOd-4YKXJM2hJ6v5gEwdJ_86GiERICmdQFHEeirLNIaMvfltk34xGypB-DnIZSEFl0xjo6GEMXpXE2pJamS1uQtrw9bUc8EismfL3sYm)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/0JwNGp8VZQbsW07pS2sP5Yi5mn_dwYgDxcgbCQAupcJZk0vxo25e3UTBYjZznbaX5dz426hYkX0LKmlI6bnWnXETyWcHE5wiT1tcVF8tlcFljTwxPsNjQOfXMoKR8vFJkAwWLBAGhcNtWQyavK8bsqx5xltkdGCY5LzAcOooe1sSHM3yGC4T83RH)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/_6nT0EsemvR-nLkeClRoVPAkSuVsZqRCnVQOXCsZoOFVo6NclIxAZ7BzbPxt0pwidPRmdlPt5m-m7AByTDtaTERZuheo8Z-3GxUW8bwfvaQnna72BtpYqg8f5Nda7y15aFmf1ew-0ZMx0bZ-STnQTN2YgDao8NU3Gx7qvFwyI3EWzmlAvV6I5Qx3)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
