---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/gZuwMSiZJwKRCacWC8MOS_nc7tM1HhsTzV3voMS-FqMoL0Kywfy1Pe3e6EnznhukSxJgy41xbbIebtKNhmZoPR_xeuAIMUyuyDESV48jnHFhtUQI5VAA_6CDt-C0rQXU_7CmsGv7BLBK2AtdVzvua2Us7702HnxTxmffYMFKDxz8yTHsJVICkbCrAiac)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/l3XYRylRllCly6Iphuwac9UdD2dZWIrHggvXTVnVRLudrcfVF7bchvDsNIVwpPHdlORfUC_-FrnuliHjUrgvP_YtCFOH6q_FoRSkRgCZQC1E_o-XaJqIgKRNXTnUF4SgggVHfkX0qZf1eEYfqdgQm-6ft2nWKRJDqKWCSAFwM3oB5uTCeuVF0d82qQ_m)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/eRaALinBtN-fiP2yxm_aZU_KiP0oS8tyoihXaXsw2N2d943_Eql9Xjw_d5Scuq4iNcEEdc8lzu-33w_w3XRXnVWfiIIVAtd2656EmXogppuMCqArRtxIrIg9yAQWSa9VJHS8EWNzDziDH7iC2WLQDzdC5iwlw3yqPKnQKFVYKkt0yK0c9Z2X_geYe3nD)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
