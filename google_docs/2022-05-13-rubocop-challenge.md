---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/V9-9CGkBJ6l3q8fEHMEHkNxIMwlCzCyhnA-oaGPe4rREKP7hVRrJsmsxRuI3y_0uoFQLRnbLh_31kwZRsupt8W14mR8y1ENmj-iYS9YiJLlZufjS2V1AJpB_wJMfCgwnPMdr3XqSReFXp_fCcw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/UXomrM3n0WvJ_zTn5R0Rp8dpgqwCPU4Rf5VGjeR0aegnCTAfrNdTllzjjYCmRpCr6J4pXbKcyHbUpM6af95szzkN4bgf22IVLjRRBFhPWhoUqa0ToTcS_7BDsI5i6WFGDHPsjOdAwu8_iOfOcg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/uX4dr91q6yXhvfheLZCGT8k1UCz2ehNAD11ObG0kkw3Nkib7R4fsHnd1f1cPClULeZjWHxB_rV6p0O5Al4gu9k7HojnOAL0oZcSvFo-Xo44cfDEcmoQZxggBqVe5XmOl-qSr7Xh9w5DHnM87jA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
