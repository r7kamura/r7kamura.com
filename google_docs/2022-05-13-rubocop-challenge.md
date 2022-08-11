---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh5.googleusercontent.com/9guDdrPaSAM58VGiBpzmA3C07Xl-dxlQA95S_QZ8P-jsmYQgX5_t2RBCoGtaImFBPvg8R3fTa-di2ZV15ZWu0oc1E1NH7DK51u-aGGIuLpCjXndLQG0FvGoKTyAafJN8_RDGuoOsufhTj2pbDoypVA)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/IMa_vDDsbdNLzgjxQ0822wwKirg5jxd8gRxe1MHJvN3a13nTn-0e-JmEaqFPQHh4y65-sk6mG8SPT4m3CtlhT3SxX8UG3UODZoOoJQm_uw9DRPzXM0B4C7vHhGiaGb42y0zG0wunfYBSUVSM6ZOz4A)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/p9N9Y8zYkgr2r6RycEi5EypJx79CGe8eZdq6yPzUb9MuA3YkGDePQkRKg3zR_va5bjak2t8yZsxwJmuQgIy-OdupRlenJ8Hur9OHSnicpbC5eLblxncG8LXBdwizGM36f5hYz2e6GHS1UFEGKK-QTA)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
