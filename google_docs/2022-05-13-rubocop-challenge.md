---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/brb05h4K8VyjlQa5nsdr_dYaNggDVLSR319RLaG_A6AHCGnhIVqq_yUYOatxVhkmHnwwn3HSmmK41ECZak64rvOpaO8lRtdFM0viH9fSM9EaTqBz_jul48w5le_W-WdEwVKz_0sa-lfswRoYzRI_bhXRz4C3NQpgfKUFafobjaRPKaoW1L8tqC5Xb-mx)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/Nm3wZCwoVYA69zkAobxGy2s9Js4fwmW-9SWcg4DiuOzTZ9zT7i1RdraCF-qrP_NGudxQ6WD6nuU6L5l_c2wWLYF3ZHzDVinnkAhtVre98EDyQuS-QX7_Wr9XXxobf6m1Ujh3eThvKyinX1c6AovPUrwekFBJyrgUvcARPhk4MY3xkVgcym1paK2rduJm)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/MVdVLSK1ctSiwyxPVNBCUzlF_Xg20GkGm-kmsAAVFLY-hd3plEjux-S7dAyeie5jT42m_l1LNZnSvlK0t7O9WlfBo9os_YoqbSgbhd7yzudncc4zAJ2JGPO1xoeUebjyU0aHXNAeH4Imf8JKGxxOeiDUi5yTF7bRikYDF-XU7M_OWNR5eTwqgutcFchl)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
