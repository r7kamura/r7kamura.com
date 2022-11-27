---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/J0NaxXqQmi0ymfVPyb7PvnuNOpaeO6cN9RWqt5Ah-tfAA7UMvhuKWjEAuatt-Xy7a_aeaiix8q-pSKrx4G6uFM6CPMOvL-776K7gL_GQDekcaPAeq8A9Qw_KQ4jXVcsEQnWXAYUnwZoASnP-YOf895QTAI7qBFzM58q57WE7U_diXRT5EFx9ai4t3ynM)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/jnREkHAytCDofyI8iO7cQL4yoi6DZ2josnPZ_yi6wP08gehJT-F4e20VJ0kFWmQ7kBpiaYzH-cYgLmRZUxBLhOuQHlXJqHVbwy226U2GdzyVhQl7k0ihE0nHXdE372NDdeXVdF9JwtS-yudnrEc0lprRcPGGwePX3Q9biuApt-gO-UBANz0fbbewt9eb)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/mfzFT4-bOQMevxCdpLQ6kqzbjOfWKEE_XBpHWXsmr5GOAxAbK1tvO9ot1lNUkyr5I7PW_Sn588gQtfHCCeUFxK2ia3_RjtEy0bL9pjHSTf0-oHEDgE9dWFZBG4iadli_N3M8FiOGS15rIL2X1qkKn_9qELOerDnvwir4ctwHlYMAtwAT7j9eBeejVcKt)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
