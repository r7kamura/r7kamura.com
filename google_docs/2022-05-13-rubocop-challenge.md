---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/jLGxh_dErZpFYH7Wu-YHa7Y5gGgUchMnCi4fBcCDFSFCY3s5q8nZdtOOXLCRikLDTXRhDm5WvvvP_D2qwu8tpNfGW3MyS_RkRF5mpfzl_bkhxK7I8y_KXQcixzD8d2703yLA9tK0bjtRStiu1niozR3zNYILs9mOXUrVahdyDI10h_I55-bwtplNumXv)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/z-jggtCiyOjTXSdfzqLN18KcIQTfocyO0ObeL2dWVM0y3858McSj8LilhHDhO-8xYwA99T_wZGxlk5PZMVIDFyBRycJcVIlwPk9J1A8zEcODVaVE33-48By64FWbcDm7AbTwQDxm0xLwbW0CGB28dhNrYn8O-WcqrSKu2Ssw-oJOgA25DXNnlaRqvJji)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/kSvnn6U4zZhIm-vMI1X9oRmHIPMwidodPXpgDEF_p5giuECBYHa2hduzDA5hE3ScYm-L0ay3snuDcZyRLXY9Pd9oCeQ1RIHARYSKDqYmsHGgFicXW0LR8qvOToAZFIPubW909j2jPYM1bBeW1i6oqQq4HrszAXlTgACTPC2XWqxi4D9Zq8IwXsJyye87)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
