---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/jZ_fYPE5ugKHrsJnkFSSirrRGgWyMd53voi9jmuPR9qblledB-6XjNlcJnYAVEi8DzSEQHeyi0sgsqvPI5ChRlHIsvr7QlHrjoYA6ZVX_JZmtMZXzcVtcJzM5-w0lcWPAmIokaiKOpTJNZlA-iU57Sq83AVs_47Uu8veS_IW0miimXUJ7b3DfWDU)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh4.googleusercontent.com/WbPF-zjZaprZ-eKi9sw1tDrIrUC96LlUhquh3L20ez1uu1DmzCi4nvrhqxraxChTs7zuwSrudv_5RbR1AIV2RCRAEFLCSoc_C1xfCEnxh1INhWeW03KmcmLPjQmfdGiQ-gEKvOoBi-W-KHyizLTFTLXAddVKU7boORwxF49xjS4mwHOYLK87DvFa)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh5.googleusercontent.com/Ien88LHN3tW98k57CH2n1nlolLSrteTr4CPFy0aWgIdljc99MRlUTedAMmoOpziu-iXfKra07zUgsndcuFDreSGwYXHc12-TXOo1P661IfZyTuvbzb45Q7oU1jrrNEPt4mG5iT8Jzpn-wwA4kiQaVkb81tGUlGlj9x2Iqn0GeLxN-UViby9p-R_c)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
