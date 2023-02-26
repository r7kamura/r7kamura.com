---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/y1Cuwb48C39XZ_p_rt0MLBNCZGmgbVgsRTvSGvsLCTLngdO51-c_acymzC1-jjiPN54NIcoN3UJsS7I2KnRvhfckO_W6P9HrXOct81RUVv0LkBC86Vj0qLPDRROmfZZKgScH1z22QsiaUFIhQlV5QQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/rooWotpTca1nplGmYS7xRcA0kaVDNuu5Gec7dnArHOiMcLu_YgSoYrDcikmqj_tZ0JgSY13BMNTLtOP6ziwiR0POCymuM1Wku76CyHRMcarcOlSSanFRQQM676r0n93ocxzhfAXNjUeCNOOFrF4VYA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/XQygPeV9YHJQt9E-2G9Ua74WK9hAYnhsa9fMkTemvro6NxQOf1Hjg3QZuUaGR1OB108acql4wj82gjQdfJuF0gIp6bibvqGEcuHiVqxFpKVX7qnzzzncLRwNcTGDdjU7HnanJTl8gCnjW_qHXWqvzQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
