---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/7uzDwlm-xLIcE7boJJziG4VuPVhSgggTTbASSDv8Jjk5HixlC8fqZXMiISrn6zJvEV7aO30nu-Ut-zIrxZFpWkbuXe--AB8JsmYFgeveROnHb_EHP3e5_iEPAnVGq3cduLbTNF1nmYxzZjVPxbCUF0Mb69cMN_Hjr1Y724z1NxSiVY7Jm6YNp8gx4gQ4)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/fLfBufhJja8mTLsX8BwTtCocydibPlRkt9KsF_taqjf0SSPSrM85lwHt9jOaAfhxi3oYkcAQCHypgdI0c8lQzYpkZBPd1KpW1Dr-7oBXhKuL2CTFbxwvUke0IeuG958nEBRuI70QAlu_q3DJJjx2lMM9cH0AN2paW4EOeeAxw5cdyj5T9F2JnSqxIdcJ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/U4x3iKXT8TIMk-fEzK3lEovzy4w2Zfa0S0Z56b7LTf4GwpQOK-M4NopwuyJsMQlvW6Cjcp_HmITuLv5OqSqUILzd9sTmuEv8D9pUHPxeiqKc-CnMxW4O6zPPspokKJcn6LTsnkNOLab01C4VhbXGrKAry0nGjxw1tdhawxTqziU4Z_UW3Ql4vPdv-A3J)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
