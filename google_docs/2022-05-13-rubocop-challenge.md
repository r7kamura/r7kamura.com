---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/J-W9XCMX9H8RJgxnAecclDfdVMvxSSIXAhXVe_cm1rDg91yV3dg2TLFPPyM2QfQ6Hes5LKe8g3sjBM3Xz88jifyWONeXAlrol2OEA7XhwWxbnLm62BNav6o16oAbEHBNJ3ENuJQyR7hFOuYnVg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/o9GAkxdYE9TEzTdTxwjd6_mSydundoKhMhO4dHpfEYt_R-cgx-sBHBfQLdAxKB1b4joH_X6b-0vTcz1MaeGHPDkFwwk93C4Lt-JqYPvLvUxjs2DWB2f1htQnIKFBv4p1HVxtxfwm2sYOeVWlkg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/8KibFow_ubac-kLevN-kC7Bd3NB_C6eT3GrQQcUOwj7P12s2N94Dthtx431T27UrFCHQPwnhv4gYwfFXFg1sHhqUgpDIMgOoHnVGPghq4a5OyGFUETluvNu6Ghkhsj1BmctxWFSXrrDmFqDJTg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
