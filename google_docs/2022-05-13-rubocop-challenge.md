---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/tVdau3GGdcFhTLQjTKaCbHRSJWAmrgLAaQvnXrXWI6yQ5ml6S7fxsp8cbb8eo46lRcnP614eMDqVRASAIVrJQzP6C6UG-pGzCFuBmRTurIH30mPvbReLHDzj2sfYJ4pLZxYBwt8H0Zk7z23oYHK3kTlVvrVkLCATc8XPm6UrcqJwPRjQwgsSHq5B-diO)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/YCJj26cxph9bnOGgXDFFCYk-YapwQxeOWLQ0wTJNfLi8xUhAchhoWeJ15pJ8yYIWf_0fZCbvqtay7MDBTai-jAND3zKwRZr9NxVrlYcALRnfBTbEao4A8JImdNa5qwbI_qSbtV7BBFgfiBCrRPnF5kOazCMeJQf2pFKx0sxn2IadM3ulgAwrDs1rdlSs)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/7Ltgx_vNNCHBu7Kqq1ykfJynVP9vY5hBWqK7Co8PD-cAAkfkSnSiaNf4nve_C25iO2l6_B3cl_2E9dJhJzNMpgb8MAA0rdVZ4K3rgl7K4CXSEdTdQVtl3ke4U7U3zmYFzSh6sGSB0iqaOUyTszq_k1LkfCECqXczQjy1_RYNfcK2VpCEZplDAwjXVAac)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
