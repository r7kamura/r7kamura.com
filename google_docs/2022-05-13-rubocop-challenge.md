---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する
---
[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop-challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/XImt9l1CUMYZfs71USiGT37b0wzz0MTpGuEUmj3EkeghclK_1hptwnR6tS9WSzHNXaGjD2GzYY6uL_CD0laL2m78KjuiLIfS5Ti2kcUmr9WkuMkqHjREj3Gzp4FlJmymgcTlt-SLm7mVH9UIQA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/61fB19XNnTZ-bXPbOIgFJ-cbpQtuZ3jSjvR4JWZ8i3JPyWcZpvB1KIf7jSLKb2fenfxVM4-jQSNBTDOViOf9wgjlbojC6V8LONrNvenost51V3kxNTOaEv-PEtzUfLqMJakjorfsYOiqgfco7w)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/YWkpJ0giUyvcxMralitHXrmIT3NOjL0EO2In0aGqM_hFKm7ESaIrJsSSxZQ7_IlZuXTDB4h1YyJFVN-b61yOyBBYbvVns_SgOTI9gWfB-MfN8f5wq5D2JpkIXhNA4NW4ZF4a8DAWy2xB3Mab8Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。
