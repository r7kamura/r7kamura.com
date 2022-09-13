---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/kg6F5J2_xNSMnkBBEA5Cv1y0nE8puu8TuehoWVmGm8UJI4jG684H_h1l_FAoKqC8UimSTZiuYU4rhweVlwZcs46lTyKCHqhSKf8C340JXUHaqNZ_TAOReNYi0SWzK3DvDWm_2b_LmtA9SclTfL967gw2N1zWDWyVf1sx8_BnQfP4-WIAMo2eoGAr)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh5.googleusercontent.com/Xl7Xlj_o0K51-uHHEyAQT6ZkNXoLAU8Azxst0vOEn5wXkybj8tIFcM2UhYVlJ5Lw4fn5aDnjdJkY0FLBdI_q-xaFCGTzncIo7Fid4DKnyWCXebS0hCvMjlDIRLgq1-NTbYsMeZrpxCB81wKpaGtppoyxT-4P6Jxz2QmNH6tC2p9fxGkehcK_MS-h)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/NqKaahTrfVYtAvFN51XmK5jcvKG5hLwrg53bj2rkiLnotsZv1_XCRjkOifkBANJGl_hgzZBcpdWUq3UsucRUS2k-IVt4ydr3lYQswvNLmor7lkApznjJOdbDfHfRK6pIo31U5QBCBEcDQ1Qy_studUA8oc9dThuIT9aJAlS9kP2Sz1Ua4BBkbcjT)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
