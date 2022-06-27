---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/9ldHHTXbWnFu9AmAa8o3qMzsd8yKZmP2GD4m3xMoIKGwGN0uFK_YGfvQ2YdqC20aquXU-4rDHmtqwYgg5BC9FF2C4rxlyLfQQUmy21m2lwosFB69rn7bILT0s7x5tftLFItHB_EQ3cidfkyTtA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/bBL5HgB6Tt6tY7LvObIOEbtF-NU3F_CfB2fQG1pAMVbYQ6v4PSI0ei8JUlLZpGSXRXS6PnibFX5FjAy2ogpEI_WSYPgYdVv3XNUAw_ewH1sBqAOexzLy6GX2VndmC_saJM5W1IIR3t_NUSizyw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
