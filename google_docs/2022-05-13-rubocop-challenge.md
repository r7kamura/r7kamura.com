---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/OfthVw_asBwJ2LQfzmRpvpe9xJRT5OzCRRbSlKRUOCfQ8I6WRr00mTAcWHF8BleTQlKpUsHsytuTqA8pdZLj0337zdS9wqQN8dRLWWXK82__hY_oqC3LfmMK8lzU4feRrDHXHxzOcQknWWnhvbKjKlGF4aIJMccmzgVTrU6kmuD7DxRAnYQbzS9ykVbX)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/LYiYWJzp8EeIhih2f6uAmubZWI7YTCwxiY4pJziZBZOXkkZe_EoxU506jrapdhSdBXD51HE5VnE5tP4Un_BAo4ype325JCVdblDL15cPvFizEatu9JUMYQdIf0q_TfH4I_MKtziq9fAQnLBzq0gF45pW53gnDLFl_p82OzOpgpRLhXMsW642AcDsvbi9)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/oy_TxifoCvZcC5hpNKHwwkxa3PaowkKcEEb1ZDjmPbc_Lnv97KnhvhXsKXg3r0id_b1b_DSVR1LaOGbrGvi0o1epa8L-R69peCKukxkxl1XKmFlBE7eRSLR9EzTSaQ1z8taXWPWP6mv3j4mAuSIGL9MzpAuewkmvGFFWOSLl0aODq-LuyCO2u9SWprMe)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
