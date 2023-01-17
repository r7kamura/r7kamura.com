---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/DoUFldYBkSPYKAuSH9EaG2sOY1ZY9JDvtDc8J6KRmEvnqjGPoiJ0k9FPzROq7lP6ZBwjQP-iHhL2f0CwGl-xCuwi4LT4vM7-uAxYRLWMxb5Ylxnxop2roL1wVyq0G_IiZx0eP6_T8lyY13xnnM6Zauft0d-gm7dvcx_zeXgJJFN_b_wUZhYuV2A2s8cC)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/1DZpKGlCRPdiCpZsqA_3eHqOnerkabOiL95rih_iG32Sf2qHMLurNxh0Cioab9l3MDzQdktv9ktzlCD-85wlyp551TUI94zRl8R2WUSFuw4BSKY4ChX-usKp1Np3YMr9HyA5ywysCjjba64ujza5kE8xBXNFrUVsvPK1sIyCOkZzStJ5XjNkMaAU2LAr)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/8gPfYhhh3ZxKm8fwpRwmRpcPlPCbJYvjgl1-s9Cp2gYKM9201mZX_hn4tzUPPooFsZJAnxKPwK6oL5DMrzDlYwkiJ_QuN23gwBg8COoN6L2_3XLNaWn2hVvctrlaqY_jS8msG4c9mCmT2yQ1k5qmERV4DvJ5u3-U9nJEJ9-9slnW0T4Gkz9R8AROYnp9)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
