---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/kF9_fhpHQOL-z2rSerfcMga9rfGQgE2qFWWtm_2uYo9k8GAgXl4oXWqPaNbbmIUgviYh1R4D83u6wSfEH_yS2RZA9GONVrxlHEv3bVW7PB4LHX6inaTEMcdmHb1s3mP7ECt2m02NMmb1pDeK_CU2p1e0Hcwc6cm7K7E4vMcrgKpbVjO7ZCxjFMCQohxj)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/q8R-UBAPOnvc9yBBL0WYafIYF1AL9CtjDnXa6GwOpnpxod4FEvXDcKD5I_J0lEZfEWyt8D43KweA5WqucxyP67T_2eZAwcTp6TxJUtcl9gHKIy6mLd-aSOK9fYwYpgIuLPdb-eKt8WI-5HkR1_JWTceuPzXFCOBuOF-KYkWbxwp7K379JFMeAUEfvxz0)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
