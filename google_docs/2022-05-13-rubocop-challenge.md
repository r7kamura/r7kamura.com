---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/AL-Zs0Z18jcSdKy6caUq8WbmMan0tvq2F8vOhW0dM_5pEvC4CmgYa5LKnZRJrwslc7e-VYOVoUeZnpzdwRtM1_IXqRGiHBK8JcleqsDEhNBrWAldx9T_d2e5OeatNAqY4ME3jTb6F9_V8eoOmw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/vW9sus2BesnoWg1pRQEaWzEd3FH-MEB3M0laP9JT43Ry1b8cyYUwFNQOrtej7TZJ8p9fsF4UiqIWx7btI796Fn6cYp56i0V_YuHDf3A916yEm0v1i2_Bg0MVW4u2xjdae5SPcUXDCixtjjZn2Q)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/li844IaM-M4FOGnNcYNSHbMypuhgy3oOZFJRiP3lhWEgVAFCLArDstepNCUY7xkQTjk-dpVxZe7kdYFKCi53zq1BEGtyopogzBGIsAqd-vwTgezGRz_ApWqlpkA19cqSMOJKdGDAouGXb-N2Sg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
