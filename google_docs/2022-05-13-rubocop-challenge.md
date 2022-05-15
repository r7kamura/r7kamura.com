---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、後編では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/8TN9jpPtl2T1xvaoy8tE6-6k3sgXh_wmW5kYOprnLuX_j5gpSAe2ph9-j2CnIiWY355jDZP2t5S77H6xh3njj-7Eya5gSGF_9Q8jm6kC4AB58UfaD4z70eISxCa_bxvkGpqcOdrFyfvl9TNVkA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/VA8Fqlo69bADiddnLBPGwixYF5soqLC91EoDP9X1avCouA1Ay6Wt225-0XZlg5n6ec9Ly2sJIRBHkxjv0v2lQmlh8uJAFio6jOsM7GM9erOlYCWEUg67e7iCPSdZRBdVtHCJ9QaLByElgp9JGQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/8_GIhfhmuisZQiQRlbYNzXafX7Xht0qpQSFeNnFnkPGQ6cAG1j2uDiZa9S-ZrovNtZ6sytPzygZssxH8ZPAZr5ckR3i1ectVUANNAglKX1WAOLE42lRDM9VtN9RrwJlT0QKgqs7qgPFiZV2vRQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
