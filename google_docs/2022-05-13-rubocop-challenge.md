---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/SgyCYCXV50Ad5_1dJdGd9EEHa-adabBY7hcewvP0-rmAVFcYet9D1BZ-GyG_0kAUz73JhdOX-SMFkepa1gqivfalz4vOK0oEPdAiYRK5y3Wx7lF_iMUtsiKctAinTmeoBEcCDnSO3m_j4ANlU1RojaMlB2baadXA8JlxIXaVpbIZbC7mddxergeilNt5)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/zxkml8etWqfi-mLW8T1YEJ5W1zkf79pAKIqlmWkSbrIBha1H8oJG6WzxhK6Ir3ZkJYnaPECor6xvphWQlxgKSBCx6ASbkiLWG-zUAGdvV5atCrKtp-3fjrVvfX9nMyG5On-wFQJsLV0wpP3lsNdESEQILoPuqDvS1UMCtvNbDnNLXQ2SJnFZSRh62d2S)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/KhywiKO-Cf9Rwr6Cy5gjzaZ4fmoUrwFLriOhO888a6lslx6jpUwclojBeWqQnUFe70yeieRwUjSt1_O3mwkHBq0iLdeLHMAuuRfw62jXrynmhIxwqINmF1OUNeY6DQdCuJPUHHNEQrb5aGW9lZ4yeRMjap_SC0vmX14l3Iqa6JkozQ4oTytVm1SDUtAH)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
