---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/7pEMG2XGaBc3rCjifjO3Mfo51BggGybcdumvBTJ7cSIsm4bZ5Wbhrw6chHT03uXJGJgK5wJiYB8Q3jOgMKiJzNZKWsohz87cbS1GionYmBYyJ6hsK0PZpiGl4kQVhGdKArCkpoNYIXcXdK7gOCrfAA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/deQSgCIZL8kjyPtA2Zn371zU0KbcEwPNSHAfWG2BJRaIaYHgQpxG-ExcfTwKFjoUTGFtb425ZKPkNU9pkzVtm2SFmDduDCYI_ULnZY2zyl1jrC1HpmxjeQp6noFV_iEeN63kO1ft-iQYS8jkCNDKBQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/V8KWTZAdpWZAl7lII002yvbGQs-RXF-lFTFmSJmoSqgnvZoC39HLdDWRv_vkJDel9JF1SRPT888PKGPmilzKm0bG4eZLiNoAdcOpl2KPxCP1ZfVpNciCuJ87UfLgpd1ENtVKL7o_9UjhJBtpyD3BUQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
