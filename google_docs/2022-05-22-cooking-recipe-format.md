---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/A9nZ_cr1qmQDdp49pwl2vx9x7EX07VJFL6HAau-qzWGFATpeOFdhB798wtoxgj5Pchh3htRd6uGzFObiKaxF-3ElybCIZ1ncIQsW9Yb9WPsXYuH8xaLBSovPW--7SVUQMgcjCzkGS4PupnTs7Lr-BA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/ajIhf47HfwZzyvPvl2GsZSIby1_lG8Iw3Rp_wkQrFsdeCG9iQigwbG7cM9M4fL5rubz9fsJe4BO7gqw9h_GVZXAiyxWg5va3iD_yRe15bceOYPzqVqDGBGKOKZEXCpxqqfI7ZuJ-YhpYQa9O-hlUjw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
