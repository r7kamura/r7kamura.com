---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/fwUv1zvNr5BBfqyFHybKdyMvB3yRxHfvm1OzwwTveM_vVvmEN7YzjCwmQzmT8E7le1SAMtuYaaDkExhrF6stlCCj9NrzMigBLvd94EEel_tFaf0jJ25NDX7ABA1KLxt47PgDmKLrdi-kkXrMrBZqII9QdpvsWXEBx9lkpWEuV4ZYsCsi3SN69-nj7QL4)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/SECDEWEotuEeIDJB2j_4tyfNwux2kAif3cEDkej_WXR3n1nkrYayKlkOhlTiJdNENiZrFVzd7HCBWvHiVJm0sl7sdH91BVwwyr88gNEaJNNYO3VoNGm1VqWbuIfr12OEdONaDCvV9dExoh3T1Rp4-LwJcLEOyT6uqqYqpHd92VzlsWpCPTHC_pi34R78)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/tCK43Z7M4ZxUmXseDcJfioiAPK1ABQrLzyDfa0znJY1_viU8BuA9JLPMd5LGgzqFKCuL_5Cy8FwuFkzothwFyshM6cH0VIzdi9aTAjYRfkG6w7hFRM0BWQy7saJ_-qhsgjqaFwPqTGDGerzwFjIPulyh-alWTIV6TJhPNfHxQrM7UOkJRGk8kdCqkw4A)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
