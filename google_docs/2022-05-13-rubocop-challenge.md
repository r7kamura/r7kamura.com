---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/2WyHLMguXaZQ0vmFYDPIbLrKRnNIMXshVZHGX8Kvnnb7I4AOJF-JGe07e04BtYmr3BEZUGfgSpSXYC8GeoR8SEw6BVsN_lL2-nv1MQEXNeflhy_mFiN2t79lTPExJl_FTsYLy93xd2ybwkUSyw)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/VKKAi2X8j1GRn2O3odyU8NH4WMJbpjEdn44nxrsyZcC0jODvysC1LMjrd6KHocAbAkZWmBqrKz2zDqazyAVDR2UWY6ckV_55gkzLD98vwUIBO-6cfRta95XyFp6IMPOcrl1kJ0BlEVFYh83rJw)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/4XO77fN0s5huMQdjX0BLD6ofe9lJRGMdmoK73ui8mGULYOKYjP0Q5r65WKRcljIH3ai7rOHXyEmur3gtnqc3iB2iPxgH-XGKSHQ0oiTuHrZqYMlb7NdFio9S0AmN1uLOvzD96bV-WiAfqV2W1Q)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
