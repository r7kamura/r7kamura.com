---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/uG7VKRi4_KdxCNzeFON7eybGCepltEpvvJlBvbQKUkyo_Wy2p1SBdLyQLky0xHHjYXgKSRaLyt_UnNQDzOzv1emHGTxgt5CwLf-VV7hB9gv52Ahi7I4TUqYx6wmVVRmXIuvE-bg4BZLfa4RVfhOkhA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/D7DAGnghhlCSc1VFfGTHnS1wZ0BEOIUjpip9G3ysWgI2HzUx65CB1dlwy9-d4m_2sepOPPCVnCbvkpSwSLFwp3DqnKg7VWUs_gSeryaeU8k3AlVGJOCdCe73uaTN4zdGBWS6KiF552juwxTxc-mIWg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/x4E2nb7d7M14a9cHh1lJYpeVgPa3DJp2cyFJiOx7_dJau3-6TnhHwtI7PP8ni6ldQqbL9S6x2HqKZpzWDrwy0dxM2CmVSv0cBvMRgn1PX7G-8-C59Ik0iq6CkCUsnQD2kNOT4aP7Cex_N_mBILGAWQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
