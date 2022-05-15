---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/6H-9UZ3cfG8iDx9F-hoGKBP2stDu_DC5IG5mZfd0ECBIM1dPJKjc52SythKJ8vJ-zp3CmPAHxKFPYbPjkzSJmEW3C9MsadxzX1163r3fqMoWcikWEKR9NAyEZVSqhIn6Jkg0JnY674zbR2SRBA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/HkA1qyqfn0hyeq6l79BrPfxb7JjGdnOE8EkiNMb1CD0-yTUsfitPm1H2MvbMDw6Gf3iSQsrXmTkz79xOxC0wJj75B6a6LBnQsyl-X9JMCIO9uP9E6nL2xueFaNMUUSG-D5Ld3gwuKFdmH3WgXQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/CmRHq0kg8nmhniOJRHSv5IaXMChfDCPBJocAlHDK02pKPJth2ImVEyMSKObxpHG55r6wohNC0elB5yx8WkhgpMxq7kMrOOkbuLD09EM5bC6p1qqB3KzKjTQyS8okna_JM4qXb5l4mFq8cr0DMQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
