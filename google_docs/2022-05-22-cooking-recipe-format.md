---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/NZvyBS-PHz1HKpFNRQXIaxXTJ7XKWFApUcbmXS86924brNzIwuBiEBGxIyS1VCk45qDtiCcQ418dyy7WI81FRSeUeK6AcW2H4ZuMJYYJoX-UULzHCX_pADctMGRZbC7L1_gnYqclm6y2zTGgSNwPZqFfJdPmHaZOq-keTIHLkGSknEQnd3LLzIi4)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/B3RprL125TxSQs0tjU28JQuDu8bd-ET_PxK3XXpdo6_FMMvrofDiiVbInvDsFnRm7VepbkhajOVSlqnQUJe4_msqjmBJbgXpMC4yQ0gLXmYHPNAUirn7oDEBV77zyRHS3AmTPj3TnEDgdY8m2lLilYm1MNWezWC3zE5fZ6rwJqkspf0Z8LQ96bAc)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
