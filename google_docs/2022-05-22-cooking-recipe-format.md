---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/h7AXrhof80GMx83rSQUKrS5cEA3FE3Y_WTs5nUrnwF_iJ0olFtgvKZp9ZbsPIJFTFMLbrAvkTrN0p6zQ3Hi4iUK2QYiuTH7jGYABX25YJezAM1TT6bx4VcYxVHACb0GdUHMXlD3pZ9qzMwIioUYMBQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/k41HO10bwvghlllKvuCZ8Cv6yuIa4q-Z-9WA4R7oLh5X3Cavx7A5PljZc3UX3WT7uEhf5t0FxINmtMa7b1aqj6YzPqlMKnEjRtjB2-BzqQwNV5K6M1L-h25fXl4hffMsWia5cZzfuv87GaYYxrJIWw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
