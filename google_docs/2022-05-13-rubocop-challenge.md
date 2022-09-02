---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/NRCMKCg5Inmr0Aubuk7kxh1NkFPc9JCanvx0XZg2cwnUTCKDhn-YyhxqR_1Uywca-R3gv7dLd4Yu00fCcvx9KPZuvPcufc6MDhOzZj5jG1D8swZ6Fox-a7Bh5pHvJo5W9r1ae3Q1MyzAxiKrHzIufQ17yNOxMIeNAl0AGWmZC_hR2Ufs321UOg5A)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/1Ac3qAcEVKDe8FEBLpQDTBnLpopHWIg6rvP6jfzfR2rX-xaF5-qjPpmU9ivTFHbDnnwY_VYkwLLBxRBzTUJ0ib7Pa3hJYM0MgCoid8_IkjkAYvZmnX5bEH5TRhet2Imm2YvFyia3eBzHBTCbKubdJJSQs3pOhEC57xifSCTNifmIzz5n4XXgXIvo)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/pmnJUIqa0mIkdz--MDFBJneFSdgm-K981mmtPEp2N2spWH_K5a1pKi4yI0-VUtWlmalDuJUZS8I-dbBzjajzY_UF2hux0O9ihWgAyTqju8u8dnVNQHuEJFK4lKC6v5IjVpxpcjVtXgFixyL8giyh483YguRB6-s2iddDQcNdHwWWJFQ7GMR2HRFV)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
