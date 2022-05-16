---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/O3dPoCzYZum2TiELHGv7a0dxcE3p_W5WP-_wJ2ODVjOBE1xPjT7Ej28ES63qysKUS05NosNaOODz6E8kYHS_MDcrf7uhJqwtTpgdpt5J1XPt6QNW-ZPHDDsYhiyaKzKHPws6MebFA_Q8GjPejw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/xtBEhzrw05FGQDXifJaoN4FipBIP-yZMhwYLPgMyVYM_oDL2t7r2qM6y6VchjYjAiQ4Q-3lNwqjEm9lsxnpnozgeWkKRs-9deRgRVrUAYRUaX7pfGd0qfu81UqpVjgQwEPK9GSMkIBqywLv4mg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/hAm_orqi9hllbMYnsYPx15RL3dU0OuXWHHHdWNys4N-0BHRWWbiRVQggK0LkQEg4x_kDPnosnsnFsAsqYSK_OOQOVA4vFTVXEzOP9XCPEGoUOMVEkSnxdssnGAf6vLUtRxbLahyMqj6VZahIHg)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
