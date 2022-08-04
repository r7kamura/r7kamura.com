---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/SuC3_a0e921NQW1aSDpUiD9RQN2t9JtHKoL4xrWB4LVvDusbw44MHLtBFtySDv-oV0aimOizXpcm3fziSk2F8bCdwoHiROFASOg9rbOkhGlPddXc7vwETN33-wKrDAvDidH7SEpgdxl-yzkAgQUo5g)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/S1q5VwNDTSA-alZ8F--De9uSAJwZIMEgjf_1PTF2W2hLV8Ygp9stwv49vyDFAOJ4dZpaV0PnShF8pmc2cziIcVTY9_DrxB0QHnkcFJDvpS0kvidQHyQ8JyvFE3WsirTfZz6UaMwRQF3oR9YaR95fdw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/sMt7POZySGi_Kvnty0Ff6aBIzlAxPpQTSVtsH1YUEr1OLF0NnIaOuiPIZI9OC3aqlkVUlxPnhXB08lpZJL3xO54QHp10FEXivok8Rb4Q-lsBGCRTTY-UAVn0_-rXCyBnBgQJhhEMhezqAewFvLPzfA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
