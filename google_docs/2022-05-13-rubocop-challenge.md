---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/dRzi4aXcsAtDX18sWV1PoTcvmNp9f5j0GVGXhF61kt6p3gsebSjCGo0vk9VnG9SRL2mrXxPDtBdhe7CnzOg7NE8nJYMKrBiA6r2JRlp9Zw9AZHmuZFY7IxFtZWdWfhGRsvVg9DWRLhIOQVJa1OS03klV22l5ctL0kvffprLF03PQUxpoJgYSTXgq)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/48GXS-wisDA5JW2bCqhZAq24aRIyyiDBa5eq7y8ztlKGiVN0PhigLWJdmCntWccw5RXVimsD0DX_qrV79AzP11q235E7p8fRyi7EL9k2h5Lg0I-3HkBDUV4hWMGF3Spw1YNwTF5VliSYjLhxGxZHXPN6EfjSThuhJHLK2MBaMjUCWUJrnV70Zfh7)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/IFANtLtIvsVkkJkLKeKs2S6O5WKFl0rYCE2jjbP5c3athstSI03aTv62kbwlPxB2nY04XDBgQBGyhtRP9MYNJTsgkexvS-KhEyJ3KxPyDsCky1kP0BTRa6JKwRF-IsW2gPbbYJo20C5ByM7QJTbQCifczxKDZj3_u3wX4HD045kAwBiixoZkPoxj)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
