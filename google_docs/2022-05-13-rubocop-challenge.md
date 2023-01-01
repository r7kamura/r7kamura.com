---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/vBREaga4Nzkw_xNghZAqoH6oTrlfoHww0QjQ5Buq2Ooa_PaidewukAqbE7I8EP9Pnppk1dnPwKunkXEKszAUxqywlgZrB4I9nFHps_XrZGcA7w9RCOAhcRe-Uw7lge-iVkxvLZhfKPH6O7o2DQVcnXO7X3IovCbkBFABxmsdEqE6bJ6XfZA3N9p4jSbz)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/SKRhoU_CopXy9onPnZKqCwNsfDNeUzwPvpC2QCX-cisadBhJsMhAWZNe0vtLT7dP8Uo5Gxmd0l5Z7DtkqrO08nPV5eygp45kOFKr--Ffbi9Mqlfb0L12MX8QZs_lQTcmEsGh7iWfjrwFCmYARH0YeWtdKuHivFsuY_PAsvSLXo5IWM1DH71GEdpeQ_EU)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/oBnHzOqFI9i1tFWrSLK8OV31KKV1MibSkE7p7QRYOwQ-BbULvP7S1M4KhD7T4og4QzHartTef-tc8asWbOwKR8vHjMXK07pn5_ZZMvrHRWHvbwuCmdg_jIqemFAWdK_njd3FpYcip_4XZ_sGwQyH6OnSulBFBsOEI9S-0KUJx7KOUPMsPWPh36OQm8HP)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
