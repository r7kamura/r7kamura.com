---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/q_jYHP-ICvnNCtqo0kMmfZLa9F2JU0QWEJO1VQFymhfC3CzVKqxmnPXGVGn8eS7dWO7wFYtsO_d9BN50RFRJPneiiD9H_zZ2yEHZoIgre887w8OwxCiL7KxL1k_eYz5QkhPUqtxOm8x6XC9Zfw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/gMHHsdrqFx-fOaLKe9XtyZNJrzQQoiybYRJGPneIPG3NuqiMLZO1mIfNcBRsl8qfhhnHeIvNzu08yCYNlmPTW08sA9rYbZ-K5B95Jld8G_mUfW2hWUjVjuOQErmB5r7W-Sb91lIU8KSWS4rGIw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/koLvonUN2-e_kNzXjMTMgrBCsNB1CT1KYUyCmnHlulHVeucDV6ghF0gMno0RnkwjZuOHPrlW_8_k-PY5g7o-9ym1CUJRJB9-Lb1UiU7ZDY2_jdMmu8LDZ-Hp_owPutiNMzfSW3X0ENjp6bBdCA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
