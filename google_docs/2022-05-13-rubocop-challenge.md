---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/qKiXAI6RipCs5N7mGVMlXN_8H4_gPC1gmGR23tu-CXEkCWKoCmACO4UIrq5fIsGO6mmY1XLRL1eiOEDA4zmeOcvv5iTH_9ZIKRKulLvl36od2AoEsH0QLLo6YM2Hiz6HJuXPRRweArneajCeQQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/nStF_GuDyE13ciVas0nfqP5iF_bkQYWoGHmxmOQzCOhXu-IOtoye4Hp-z3p6zDsqax-FNrPUdXOs0uowdIcmqy1EdUkH3bvOxdp1Z_sfd1UefkdZ1eHkMtZdGDIf26bn2y8ZDdd5maBvwbNqqg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Pif_7ZY63Ou-awkUTWbkW18GEMD678m04yTCEpu5Dz3bslM66CZNulw4nu5jZI5WqOjCwiVA3pwXJ7XhEe00P0Irk1Q-oDzY08s_vtfd4bG7a5j_7olQz-Vo74gRLBw6xgsvz_1KGQCJdVj_XQ)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
