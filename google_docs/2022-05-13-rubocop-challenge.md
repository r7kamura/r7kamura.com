---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/i5iHidWONzi4Yen-KHkHp8txCvX-Ly-0vtCS4jSmhbVYWSG25A6toYDCdUKT34ex_jHwm3YHW5WSB3OkleYHsDQuexdv6CgGxmURe9J_oJfmmaObd4wMk8zDHkVzTwwM4Kf2XSMGFPMiXclPCw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/f5Pyk93VvQ174bzB2h8uU8229typo4XAeqVYCR1bPNytFl_iCWb7J5fOMbDcqd0l34rgNQxXV73bUZcpxwr3xW65RAiSrMYLYJdkMDQZKxV7r-w6HB4dtBFOAoJ-YXJOY541WVnJf27Zn-fT-g)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/pdxshyTfNlMmwA5Bk6W6Q65-7BXqFZiqT6C_fYvnHF9_E0Tdfr7PaO2JWwfYvfudf1xkzTJpTACTcynOQHxzPHmivVrL4D7CFrnw7J6BVCulQxKuyRRUckXcXqa4BPb4U1gUSvPY3u3M_l7EsA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
