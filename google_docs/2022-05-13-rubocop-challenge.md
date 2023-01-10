---
title: .rubocop_todo.ymlを解消するPull RequestをGitHub Actionsで自動生成する (前編)
---
前編では[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom Actionの話をし、[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)では再実装した[r7kamura/rubocop-todo-corrector](https://github.com/r7kamura/rubocop-todo-corrector)というCustom Actionの話をする。

ただ開発しているだけで、.rubocop\_todo.ymlはそこ此処に積もる。たまに慈善活動的に解消してPull Requestを出したりもする。しかし人力でやっているとキリがない。この作業を自動化したい。こういうときに便利な、[rubocop\_challenger](https://github.com/ryz310/rubocop_challenger)というGemがある。

便利なGemだが、設定しようとすると幾つかハマりどころがあり、導入が大変。そこで、簡単に導入できるように[r7kamura/rubocop-challenge](https://github.com/r7kamura/rubocop-challenge)というCustom actionをつくった。

![](https://lh6.googleusercontent.com/KG0hse9tNXWhkRzgWU-5e0mNvDAMmMvsJaeTHLD0UffdvXYnLM7tyZP1zu2wp2BeX5PU-2-oe7k5GkVJY36hcXO1JC5zvbnsvEnjusGCMtkBuMubJgTlHiS7aC1WHqXzh8m1Wy74L6sYOALTijLmvkNHhLP19NWPS_E8Vznl5wQJ5c7zRxcxPrd1oMeO)

READMEに書いてあるようなYAMLファイルを、適当にコピペするなどしてリポジトリに置くと、rubocop-challengeというWorkflowを手動実行できるようになる。

![](https://lh6.googleusercontent.com/xoVvt3zmVIvB-M2aKFR2kSWptHY8IGj5bn_adZiSpMskC4VCfk4EJgmyx2j8hTe2qfZy1_P7cXwfp34Y1IVGNJmtfw3td2QeG51ylgel4YdmOX9FGosOQVFTjdMRC2l_fSRzlEx-Ge67wDcNJXMiIJ1lqxmzEVOEjbMq_a-3N1lQbnCcpm8fH8ozI-SP)

実行すると、Pull Requestがつくられる。デフォルトではランダムでCopが1つ選択される。実質無料ガチャみたいなものだ。今回はStyle/StringLiteralsへの違反に対応してくれたらしい。

![](https://lh6.googleusercontent.com/ctEIjkYqnaXcAW94SXYLUj7uHEFtYBGSd2VgG2qspwbQBJ9LLuvelib319G5aQYgiETyH9NKP17eYNvg7wr_aNlSRw3jwMYnxX5AjJKjtCbCI5XELDVWxb7Uphq1UQ4t_1Z1uuAVsmnPSEQKpsv1ymnMMo3_VWgSzpg1QvqnhvryIXwAOH26O4TmahrH)

差分を見てみると、.rubocop\_todo.ymlや違反のあったファイルが自動修正されていることが分かる。

READMEに書いてあるように、手動実行はCLIからも行える。GitHub Actionsにはスケジュール機能もあるので、慣れてきたら定期的に実行するようにしても良いと思う。

[後編](https://r7kamura.com/articles/2022-05-15-rubocop-todo-corrector)に続く。
