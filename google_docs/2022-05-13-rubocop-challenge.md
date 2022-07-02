---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/pNjAixObUl3NFQ_4ZPqgUvlTPkBJZ-sMR108cCy4zCupdsm7FXxAzRnW04oMG5JDiIQyZDNCBBSBFRNwA1aglEDACWnJJjNI1otJRFZrARhnrcIOTa7X_tuAGo5MD5N07D2c2p3zyX2H5aQXIg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/RjY3XQDM7e0QSj7UOCHmRwiYraLYnDTDy7bvD_T_z7IMSJt7_VYuFvk2Ayl96mqPbv_ReHVKYbBp89iT5ihux7dRo2GffQOlRn4aWSVTkfD1sTfCphGsHYq570nYiism2bTT8PP9a8AyAyzAkQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/3dI5Ksjs0FolwHt0fmZbSJESqn6ui44c1Jm0KM8KcwBpIPlNQZ1NhS8qVrQJ4VBSO6lzgRTRDhk_d1w-UibtWKlaVLzzp1wfvckOGyXP5_qvddSNcY6t_koSJxU5sxzfYXnpWeJwL2vsP8x4cw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
