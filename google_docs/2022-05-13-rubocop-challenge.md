---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/p1RpTjR3AH3jfs-usAnnfrQNMOcg_xO_rShEkystiuEDIbzQfflQveMIxsh-o2hpexU1IE0zAqLenKC5bpszbX1QKZ4atmZI4MmVhDqK3y1m2_OAXln2LShRG6ogKKD0JqShmqYrLhpfjW_i7A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/7pUore6GedbbdEmXGcM2UZDq1G_xvS1zY-nnd4kdjxpDxbB9at9qy6wAPrRgto1ZThDHrTkB9xREuebT4Y6ljisCkUltrUQnau9nMXbtef3U3TRk52_Bm709qx8rGq893iNE0C9Nau3knNqASg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/-irZjdU3JiCTvA8GBTqRD5--lsfrIUBIsC2vT0GSJB3R6nai6rKiNWUaSfVCi8ysM9mQC0EoRi8vFB3WDtqxeipk_mM1U0s-IgF6N4FL5ea4-d1NndLENVoPgcxpVkfaVY4nMvg-7OwjAx8UWw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
