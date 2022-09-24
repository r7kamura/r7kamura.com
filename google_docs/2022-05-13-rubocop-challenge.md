---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/-fUTHu3X_Whmv5yBtk8hw96rnIssFiNnz1wO_oJxQOkEJ5mT7sICXfJjCAWSKQFje0WqJSPDt28Towhexl9JSniwIhL_N2E7Dgxio-sdtgOKiMIQIyOelO8OV6A-S-kWLHKkkGY2s2sRx3Ww2zvMY3_yr_DNYGyeoMGE4ZUq4WMHsMQ3SH7t7dNp)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/AfVdxYRvd_7N-aj3n9Bjp_vc85vzaknMnuvYkJJXfSdQPAUTxwQDSPJ07GqP6WMimW6rHrTHDFTD2xgY-1NeM7r_28uOZfAsw-BcYWy-bucDboHWHcxcHCtApuOigD6NG-VKTkEQrXjAXp0p_qgoB57WgC0Fzr_nfN9sRXnY_GcFxVkpxSH44yOp)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/5gx0vG4WmZDPGYrDzCipBM_Lwp6EPPd612wqr7J0EnpKM618XqoHckQA66N1y6Tmb9iqmXxBSU4hw27b01b7HbHDxnn7wL0T5EjhxX3G-VeThBz3l_1Dzlv2hQDfxMe6jQvShBHOFn1TQ4tEfB0jmbStlkn-pdxg0r3NldBEAJcSomBMuevg1oAI)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
