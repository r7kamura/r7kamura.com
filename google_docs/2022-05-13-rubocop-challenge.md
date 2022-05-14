---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/GoyE5A1idIHRNxO5rBsJ8CvRz-NxWdvubC6_A7jY9jURzhPJ38-SQQQueUSGybWN75uuRjNA3wFKhs3zBMg-q5N2L-Gg_pDSkKaPLuC1LmOsPJrgya0r_4RGHdqOZMlXDgG5f9DaFY5dmO7uCw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/m3bZnhHwLDd3lbhzVb77cz1C6Cz45w4bIA-5CZph3tobZqKUfssSlWmcsJiuOkZ_kl30942Q_3YPqPatpQR9RnalFx9HNGH_rln_IiwT0XeM6_YQw-s3G73S1M3Wj4Qn9ZJxaroX_evdvzODNg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/DJeOyoENTR3IL_z9D2RvKTHlG30eBT0pMnHeCqsCO89JNPhl4iZP4vjBzrQlsKboaP8WfvoXWe_GCPRLlF9DXMVdwqbi3bmPbDCBT8_OT8fXAV08ZnKClS4eCGcAKyV3-TgwBX6ZH8FZ3nORMw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
