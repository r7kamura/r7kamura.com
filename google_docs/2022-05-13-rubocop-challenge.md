---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/5vCkJcgDtltJeWNTT3-lwtulcdmfHRw_Fi989V3gcwpYKmdowgoyGf8BrHiW3ogYM9dUfvbAXNmQH8BM0oL9k7hZRKhTBhQxr0iiW_j23drd-istIb425LMSPqN9X6QEPrr9Xq_qC231qRbimUikZOPvyRe1rk05nl1G3IEaL46ajeVHGwb77YGH6Gki)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/KnGTjFPxvlGpbQswBM2PdyzIDFWsMm2rjgEzpblpCFH-MQGC8kZpsOApgSJwD4afMrHdS0rujE906ek4onRX2VzGi8OQMG6rRFzl72G1kHRwBfZ6l_2XjuVsyKgeLy_wFD0KuF_mO90tWwz0KmlbHl1ih9xy-OUtBpVxLlJ2uUTZOakpWWEiSaCKn8kA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/QWEpVrCh4qcTP7fwi8gw0Cs6E4A4YXe2C1sggKqqKc20-Nc5nNgjtuHmwvDQz-n41KDMdxcz3Bfr5qZEoYld7xFmDrXdnaKpXpX1H8wocO5DMnvV-IU295yffVPl-5udMoWL-ThygGXaJD1mTj_9isUKfM30j-3SlyMIEKlA6k3MPBTUmI2W-6AyX4E2)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
