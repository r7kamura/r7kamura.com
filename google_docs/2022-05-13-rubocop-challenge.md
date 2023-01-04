---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/7q3QM5WBSRlx-khS3CR72fqVgOHuLtkeUdNCJn4Hkg2WuXAKsAvr8MWgZhX9sb_6UffC_o31boxdb-lVhQZdTqGWcyU4sR_Z5mZK0klZdvz2UQkeKoNqf19KxdVNowEvA1OTMBUwfoEzf79_fo4ver6RZqbFBjezGvs4B_l4rt9yBSHWBSIETb_ywGCv)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/LaWflDEGqek68q2amUC0CYfuArMbsQUSn3rUpWHsNjsdyABuzE1hLR6GRl8EDwNUi7h4WfwsBBFDUQh2-fXX81XQq7Qc8MeOBXrrcGPDOAIP_ZeNVlNR_bT5nsDxLPjdxnabvZDixfUT1r9kdSCu88zCLSvDKSjngVAT7LFhBJdwKu_LD9MloP2tlbr1)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/b3-7PJRQQEaCbiKg0W2ExlTDWFcnUSXP9AE9IBXV0itTHLevSgIgs2O_U9dEHiK9GPLMJaSm4n7opIGo6BZzVlJIO4ru2zIP55KfnJEa48MHqf0rLozvG59M_GbcTDWnPPe0_AT3_L9EpWLrmrQ0lNpzVRTEBciixtIBGdBrGmsVYkG3aqYK0lwQNQtc)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
