---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/z3QvMjt8bofCk3fU5jryV8s_fmpL7XWKWTfSJpaE6Gz1ufDi7VqfRO8w4I49zb1KMuw4BQ8G0jD-gZ12gpevH9CoyCf_M3eO1aa56516XenL1OZNYIuFlf1bFn8Xl9LEF9On4MckrJT9ARDwEuoH1Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/deQSgCIZL8kjyPtA2Zn371zU0KbcEwPNSHAfWG2BJRaIaYHgQpxG-ExcfTwKFjoUTGFtb425ZKPkNU9pkzVtm2SFmDduDCYI_ULnZY2zyl1jrC1HpmxjeQp6noFV_iEeN63kO1ft-iQYS8jkCNDKBQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/9Sakb7vn9rMxiTPFf5ZA6fimG73--8jeykiG9VryavrV55fHrnQIU9eaMRDLj4LUpoEaJIh9dZzuS5rFkUkmA1rmejCQvxYYqVAHUPPHQNMWoxpvoEHECwaaw8atMcukZLFaj5lih_BooiyeWT62OQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
