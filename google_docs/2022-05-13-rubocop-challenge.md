---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/zBoil8RG7NYoBMsekt4CMKvq198gH-5CLLvEqnxrzKa_MwM78i1hToZKK328QzDliRYAdUwy6WbBBWJ3u1ZgM6MhyY6jd7HM8M0D0hsiRYwabg-bVWcJrb1KVNwvZA0wxOE-Bbn4Dztm5DUhRO0qzg)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/hxU-Y0PxJfjvyqzer3lECRzr9_NGmYKEtmoRugPV2FLFzQcgRVPeOFIH0AEarppplVQ8ZlSxZkozTS6PXCTPB7nZ88fqYSRQ-_3gtCVSobgCLnfMagYl1oaB8CiOTSye60r71DvqLRSTTJJGy61HRg)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/UdjoOibnyMi155GXgKCKSVj6ulzjLSNkFYNRgtL6Ak2fD2wdnd6tnrWoYxERTUtrrAjEXoeekuZvPCZRvXw6js_MYH_I9g32WloHDSbf-uI-Hp727ZEgE6a_Z37QxJsTUBA7136juV3hR8q0ODUZuA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
