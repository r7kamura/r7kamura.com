---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/E5HNw1p4UBX--IAfbiwxyQQ6tOi-S2oZX_Yqxkenu6ORGm91HYrlVkUMwz-AgRobGi01_ATQo6V-Rs27mbob3zza1HGtbwp-pCaMdKqwos7nIVXkUDhJBIU9Oa2JHEGuFWMjO_FJhFFQvmDvfKIO25Y1TrNLWkF2-5WduvIv0GQPOPU0QQrog7OR-Wxw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/KRUmmsUgO8ndsjeu39hJnncjtZOUoJj994AtVV7smHC92jYO1ssleXxEKLQTd_jXAc2mhyASPC1YXOieKBvTAAU90B7pKe75S1KWigvw96Ip4TZFWPXxgiqrZ7h9EbQjftmMmGpPbRC6O2-0jTevHG48W-OL16yzGESisl-YnJWHathdJ9MFeav0lhsa)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/V20VzHM25cclL-vA3ifcSXEnQPYCh1mkag8F_WCk9UQ-d3BBuDPd0RlMEEQqxGvOiVa8fK3creOEzwDhy9rVczwwJgnIfs9uei7SrMQiWLKfVG4lcacPuxML5zmRpbSCC5UsLqXAVLiQLDMMJZW928nnfxuilDOIwu2mlzRU0MfVZ2BogdUQI_PVc5i4)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
