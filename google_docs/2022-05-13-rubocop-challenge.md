---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/ffq3NqyQb41AgEwVy41A4fBzD9kYrRT8W69JGVJCIFs3qyAmdf4QhVW5avSp2q_msssxnWoKpRDfmqMoOuM7YpisAxnwsgFBX6sshihnzHPJy2J5T71V4IyektPehFY7MZpp7eGzBvynr8YIew)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/j5gbhJfdcng6oJVYv8zRNbcFG63E0OH78sz6_U9TrWVPDmVDBelNe4wySsinOWhaFziv3ePvOaOM4wivmXDXysGRaIwrXRb9lPFl7F0VY_4du7r5JEubetpXkArK3PaDJz1RPmTgcazScoaANw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/MFiZ7-fHSHZxAn_PODRTIhkR8Fs98aecJNkfh8NFjiyJU4VOGRF6P51S-SB6DPWD84YUodNgu8PIA_aQm4y1qhXmME2op58gd3qsFOWyvPzYTzV-rk04T6GmBYyqDDHs4RsP12qbtA2IoUQcAw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
