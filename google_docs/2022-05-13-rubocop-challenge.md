---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/u_nA4lXg6AoHDZ2ccAEENVoHKycnpO2-r04NmMCIglFkMfxj-Qlv7Tl9W2UR0O_2k57850OfGBjjorOcIs6XFblv1MSGjxn5micR0fWV0DfRUUUCaWEyheRp5-FCdLajc2Bh7UBJE6h6_QcGF02ZOw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/8JBzZQpBeqRZjqFFdhMYCLuFcLovS_twzNLzvePB4s1DXn02BOn0LCAKpUhE5hqbxD17bVjSKrU3GdjzwyffnLev-lt--uShffuK2iWox4u2Wy1hDlNdIquy3YLazLB9RpMKIkm6euiTh2cKwF-ojA)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/-vVj3djVWRn6_CIA9iuPXsJU2vpDtROKEBLoXqggYBlfVK5Zi9hCK_BxGdFsAsNpIUK1-KI1AVaHf4DMslt4V5Kyx7qEpoukM80sc07tikXHQFRgOhflGUDZmetVNAzS0mZsBCWcMmKhN6vtSxUniw)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
