---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/m0S4viKI0KtogXf8dKDhwahrv6squYvFO25EidMJpiTJ5XHpw4NHoOQVm8D9gXqCLIDqAWerbjwFxoz6vWmWvl-sBKqhOhcimrVB3yBzkU1mN-9L6M6YPZJwMuxD-tU8WRSyeBT7hrcncZ3eE_62JQ)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/CAtQyoz4FmFRAsI_NfKXk2GsPCp467cdK1IhQ7xj-i0G73S365u90P8ZHVRdk83hoA3l8kHs8ONA6GSovBhg-cIeurBsq0ZpRFRo4O3dfrVYwv9tZkZyk_INLhw46biPNgYBwnkVSaFQAk6dUv8RBQ)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/FkIueaZp_NvhSml8pnYSpvuFYZTmovAeqVBJwD1vbrJWCtDqK0Pl8Cb9-C9y4HtQG-DhJymL1cD1BGDlZdXDZz3-GIxWx-fa_G37Tv1q0cPuCvStos-g7KIJEs2fQ6Ru8TV-kJ8_JXRgePl_ogNtJg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
