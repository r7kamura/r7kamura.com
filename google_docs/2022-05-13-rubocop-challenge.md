---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/YaSwkNPbUHhldEUYaRLwdF0TDkd3Lz-CVjh-nMtzsmy3ssdC0SnE8SiBfcA1yJ3PV5bOaXqmJFM-cW7s1_9583-mfAKbXZI7Mod9uSuRJ-lFK9Xo13Trr1yk_MgQW5cDvc1Glfj7xZrluRuKuBukwHhcWABfGLmy_d4FznzBGu4h3bmElLzKBNtS)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/QZr1gSW6KYO2YF2qNBuVuXm7S4OtNd3msoS9mV2-M5BZWdTq7I_jznQVILTLWVCQ3NpVMk7d7R4qejm1CCaIS_XJuSmmybpCprQrAugUm_odDadg8HSEWr_wSXDxwr3LiqKyUEnft5I2evH0-io0sGUsU0Xk6GFsKGz15L1OhHOQi4NVq_HHKjHV)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/_lTqwhd6nAIR2Kc92V6XUGHTSkUTuqnhV_VSI_6Vmibivnzg1_FaJltmpOfGE_glycwPUAvq958k4QaEYdChdSd7CGZtptc65nfHHIbK20BOUBQc84vdI3yoAPW85GSvJeyOoeMtSObdtpIdtncw7xash4d8CNC_kYkk59105MJjKhe2mdQO814v)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
