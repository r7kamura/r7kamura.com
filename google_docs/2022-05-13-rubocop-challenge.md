---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/o6LsFJ3NDH4ZVm87RUarNF8JsXMC-aRx-JDRoIOr6wmiPY4J4oLZndwkfEtwOG-lIXWd6HGatEA5H3Oa2kbx_LXQhQMafr32hOnk0fKoSn7VUxZSMVPTVQEPp5LFi5U4n_u4pEV2-2l0MRTz4Q)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/01-OxQHb-Yt6AEsLbWV-ZlfoTmQtCelQVcKnYK7VPjYZR39vQE6LKV1NJCM48EI85eS9kUou_WppmXyaPBtXXIQrZD8hQy43rMQjJaou-oyL9RXk98h1kcaD5OT55fqonYknp5w59gcXXZ_P0w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/Sp5rzSkw4vmbllJgBplbFCd8ToIJovGiRC_bwd8t-8saPmDt9ae9psK9gb8c3UiK2g6M9iO9TmEZP9RazfqVKFVdvVemaC3kjcdTzSD-90lDALhLEPsDILe_IVaqgPGDxrzihUrpdTeC1QNGSA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
