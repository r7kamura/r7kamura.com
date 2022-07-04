---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/CCTbt2uxBpHM22SXUvC68AFT1rVd1YPMEW2FRzT9cRnWpZecnURMIoI_OVNzPEGNx2ctm7hsJ1rFyf3kD9kekeQSypO-buiMXhIKLA910cZMapXJHXYnmBDkTxJx09rjFToHVedLp0w4CSi0mA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/fAuYwT65Y3JFme6nbk3yBvPTtlvYfqLMmd8mrdPCoMoWjqgHZLYXqXgkhGM1kO6mQwWP8BpQWDA_pYoYfqztIId_EXRskr_Zizdwspk2LEIkjbwPsO8cuIA9QZI1D0PwGwJQJ9upYvAidpBWQA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Oz0J-hJVAU4DPYaXxt_W14E3t-t-dn_9MZejtxttqycm7x8maivpi92VVZDr26ClM3l0XQv8q9eAljAKGm-soPQnh9eucYLXjmcnKVh7wai4_wBp7cV_YBAxwda5j78oKLiGbD7aHBBPriGOYQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
