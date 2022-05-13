---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/2XUVOkOf_82Uv__jd13QZlC0qdLLXtPmXKMrOo4Hbp6vZbbSXqAXoPd8kJ7bCrwxukRQ-peJUuRZxVs7S6L2rEmuwJ9g_vkg5ijD0nYxvAZjn_b6d4HzKvz9hNXGr2em-A3qWEN0ICCoXMWkOg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/Uf67vTFgcecSyub163QqTO9iYCHONlgo_vGPykawfnKYpBWEQpt6PYHirdMcfsOOQMe_AuvUA9_HtmNC9AYX60f8WMK3REPl2TLWxugiazfvLqZSJimHfX7wVwbyioIpf3RwpgDTyqKEHiYomg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/4XIqCo2KWQOZRETplIbcG-kXObrVyeksMic6JwmyLJ-M_wrti_4J8WjUiyS0of8v2rtO56mgRRPFmEZvCvnPbeghs0I04brzYmFpsoRxvO2enIz7G8Y4gPIUdLIFdTU42vEuRlR_GixwhRI2wg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
