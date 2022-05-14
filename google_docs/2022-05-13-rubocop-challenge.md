---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/XZ2mSvpXqfhMctmTquVyyoXOKoAGVZeykud7GdUSXYsbc0VoxEo4kvaxsfGdbV3kjs_FS2uygr2DE6jTfm6SFismE5jPyxvCsK4sLI52AASGjmq2JBCGPF0jsB7p94CrdzaE9xWkFsU2mApVDA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/-SSE8c_kouiy6NEa4LJXeQZA-a3uTXtv9reANBYNdErmlcHjRill_yh6VnwI2O31mY2KmjiJHf00Hsjs72neOxl-CGVYjgPRH2Gx15x8ZFXXT1-jCqA8-3eKHu8_HaSK5nKxybq8-WGfgYUfeQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/nRpk5I0MPVMRVmvo1SAEk3RC3hqL1U43iESS6T67Uyl-yhZOKM7u31yHvRL3bPt0_fSPwWqVRw1426IgVLwXLBfwcQB2JbbIvzQRl_YpkqCKU8h9-uyiuZFnuppuFWRk11gepM_AFdV0Cd9HTg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
