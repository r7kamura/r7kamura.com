---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/SmlfqqFBPHlB-CywPr-qhkcblya2DlEqDYHBZCFvFip0zfB7YvZiZRcT8xIud6vkTysoFHr6ag3JzGcrx-ITnRkzKTHmAxnI5tdWDj4k3Q58jSwdTY48N1HauJUMmCs9F8Hox9uIgRIJebBryj2_YKl5g5TNidTzrZGlo1iMsd6cMLPtz_Twlh4h)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/CvKxk8GHBazurIxopP_NJRCfDB5pI0hbFgiSrSPqSPb5fuoh_UcdJIUeGS8SJE-SZFkpljQj01YrnMJo-dhgHQsQEdeTg1KEp94oSdRxM93AbLXEQCDxZuEcYUg61acTzmJTULsDWr3DoYrvXGiDEYXr0z35NQ35yWj1N9T2MdXnRNaRT-A-9e5G)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/RjW2-FFB8jXmZWvvlLM2Kru4HAJOkR_ZyroloBBq2I4fk2cz0gKCZDCXumuOUWfQyVxqiJirg0NxyIh1PJD4fnSfUb-vFLh3SxNqYmwA-Rn2TMDvXL1Li_ZQC_KDuT8dZZA_LUnLu-tX7oHSGGg_lk14tghOOes4OY_IZVkvRjvwvjVuoyE_LBxv)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
