---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh4.googleusercontent.com/uRPfx90cQdPhZFwcieRe6K92SQsACdBZzLZNF8BN8A1H-_m-9lIMZpaWzXUUvF4fk5EQq1XFMeZgRyrzDPmnBOVaws3BI6M-pM10UhRAFHw-HV3OZ2NbFGMduouivXlUTUahYL9LZmqJlWFHq-rlpXNmSOXU0cpQyf98n8tHopnuwwbQgXwb2WnU)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh3.googleusercontent.com/4rmcEQ80LWsHe2cdhzHeNhTPPQt-WjhLKx03DRJdaXXVWhh4mHUc6mC42vk0hk7oJY04pyVhpqNf3aG48xgNGmRSsGSG8L1w1Wccq3N8G74u-xOB_x601JOtIhLAchHlOWYqI0KQnAdICOHxX3MiEhdyyEIlTJrxNVUkUAegBAWq43MTBkZKwyW7)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh3.googleusercontent.com/T9xcpDrAC71Pm-1Si7eddZJ8Vap3oc1TnggclZ9j22ikIKP1V2tKYX2er3dKUyt3ZfNgQidbbz_xrRLBgCoGRLGauQzf2jugnRvTW-Xmi_F087PNXnIt_CoZioSxzGxLppxJ_m2XQqiv0mjGCiPFyd1bctPs8STGf4y_NKCb5bGHyOgDPXzZwAWt)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
