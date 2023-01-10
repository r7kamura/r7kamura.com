---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh3.googleusercontent.com/o4fAPSYM9pAhWazwfrneNewIXVp5u2nY1cIqVHuJZsAk6oL6exWWrL3ShZRZUlhQuuYcZ0oRX49LHWHKqY6jDJs_g2WxDzsxDQHjpXZIZLTV8qQmsMXRBzBM87tLKjaPoHbQObpzbqhu14JXf2CfMFhm2gYoCFmW02Qj2jEhi8ovwRG2066RXd0ooR_f)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/L-EL9YzTPPO_OVWr-lzcXgL1Eq0Xex6RPM86HUF_fC6rAd-1wqCErfUWa2aBWMRvCh1gh43YKgdiohW7vFt2zKrF6HdfCr-XS3Z7SB8IPqVbNHB6MFBEGnAxe-CL_sWwVNIF8Ax3Kwgt_Nu43c1kX7_JPFQV6A9F6f6o8JDFOPfhDwxWix5_fpCrpWkB)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/eKPvQ1zx1lc0IQR65b3ZXWji0d-lakfF_wBMAP8e4nwZ7OeKWM8-26kbIMPtN-l05fELkTqbgR8MVGCd4Wxwg7bA_56kABtzwHuDFITUpxas9NImjQ2NqkYYOiX-fmVPtSmM0slpFwcEe4VCy2I0IgK-mUCkfSn8llpsL5hc4pQ8yy2DPo9hxsky32VV)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
