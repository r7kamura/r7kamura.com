---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/NtOs2ylwSljKSGvTXKA9p8x8IUupVXQ2F5SRH7gsU6v0RChzDzIhYcVD0X3L8twrl3brt103XlLHRW8YDjOsuOg_sCsgm_vqm93zkhtIYQbzVZ_LFijeBPNjbkYhIgrC3GjMpWqamKMEu0705BLpmcI-sE7PII7dGTuV7ukxNmhpdCTV5xsS3K2u)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/OsC9G1yxiqfmNA6n5oVLiXld_fi0csl4Y7-ae7s-C4lvP-dNA4Yztoe953mTO-Ixb7Qboc5Nkb5ZBsgV8LrK4xu8g-vFx746W1CoQOWLFENHxiN1Yakhsjll6Jz9MRmCZUgoXPAkNlOytPUsk3cvSU6H3xXCii_9VFcdTuG5V5GkZ1eRjD5tP5b8)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/4iKabL5O3mRkGSEY_iFkc-BJoKHUtYqPLwsLxpDuv5S3T0x2txSFxoHR1LAfx8GiOuQvyunibMx0yeud-wpGj8NjQrkGrTqaV7x3O0AlwWQp801qAD801U1UBB1mVsOZlMpEzWoJzfMCmz5cE847gDUpw8yS3SS5YqXP-0tXp9RTORu06rMoFt8U)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
