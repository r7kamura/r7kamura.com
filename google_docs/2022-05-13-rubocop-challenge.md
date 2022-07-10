---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/I-3faVCJ-S1LmrTILH7uGQUlxsrOVLR-TbgLu5HaQkYXK2DGWfXcm1lqIcVoQZ3_6vF2CqsfiQOPA4fzDmLNE14NxSiplPTuxyE34_5KkKDn3lNgvbr4GVshYRu1MCDqILZ1RiBROr4ahTKPAg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/ZbxMHqdUPylZfJIDP2_MJ6MJuFPzUSWF2AZCyML0XVX_Ds-CEre9S-JstAuIWAIM4YSiclnJ8_LKeFHBj0aC3uhDxHNoFPbZ2EuNNHoG6s26qzWz9v2D0ymcRmN7GPLLyyJkNYVlFFZrN81BnA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/glXvDvHCW8XDSbFPQjkRje1qpuFpBufQvoeVDUNitbvtVs76f5-vo06KHl_AY3d_Iok7-YKFIKyiyz-wt2z1AXdXtU40aL5kHez8tHjS2Ii5mBfZPcDU4v-594YYCxK1XqQ9SEH0tiojO8kJkQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
