---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/-FRBwUqz6v-t1Fwua_pRw3vDI3iXdGFjdMCqgEZRqXRzd2pxblowU4YxbTY4Y4M-8xajrloEDKh2cdXANFWEB1Z9kHhl1jMRYvDgm_MRa88m7M_LtuDFPAdcr73PnqbwvvXX58nys6JmJMZjk_nmcnSbioRyMbRNGHfO1oGSwqW06zbD_B3jGqyM2RIc)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/ovrcGnp3z10-gryeIJwy3hO7YUSCm-idsfMtQqEI8ta5jULJeUZBRTqKjARX9mqntr-f3tlL3iyYivVATfVHz0pK8uKXbv4RZQvensf-c-wcFYdl-94zU-sSNvmCcJTc0GHWm0shLbOlQb8q40079sj1Rm6Nngv2HKKUZBTsIXDhRbvH2TUwl_H0155f)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh4.googleusercontent.com/CWKFDCv72ixzcC-3mMna8Gj2DgWRU8Xe-tmWlmonCWVqMcHppE48Cgn70Hjlkbatc0utPqMOkZQoONuWaq1eJcgjYC0HUwVctDaMZRJ6MYjXP4XvJQmO6k2mrtv6_BbH3F9HS7S4v_DnZWkS22MIQzBHT9EW18MUe-7yO-q8QWCbmX-NRGnKkdz1vzXG)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
