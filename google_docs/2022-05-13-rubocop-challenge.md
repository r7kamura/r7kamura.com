---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/TsG4sAFj6OBzAc-qXwb1xbHs6s7qkUXLFkQFA30ToWhGt4cf4zXUAtIduSkN7jVc2zOlmmwOKfKHzQ-jvUba197_Fu2KKRVx1KTCdTSYJ-KD5GjbjNNA8OHB6pJO2KNb8OqlPQhCJgMQCcyt_GXlaF4LjGv181Ig7iHYfp5xx8nb7-HrqrHhrLXV6eY-)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/TYvUmH3OF2kH9wcNOuICEeJ7LQffdxtU-XktQjH2sBT940xW1fbz6VeSywN7PXFtwem3UzvHkdwPiOUgXUJzgHpcmup7bextAB9rVLZp0B_rqzLUoMylr9oNQbewwq2Sp3A7kZj0ZAZIynJ8vDuxkurqMGhRHgR-nPNvGaP95ebMTM368cNBFncF3snP)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/NHkPdySrn2zF_5xOs2xQuPPAB0fg31MzBl_vvB4144QP-CKze5xWcm0dU62UWXvr3wFXhfn68hsMCnbiqJCQBUoc52u2-aitqWGoVi0pmDzV-K1-xvsb9T84y9YScjCfMuK-LLgXdCC3XW-o0ZH_GhDLHdu_1AIqcHcIHHzM-wA72HyCVj29ssqkQnv5)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
