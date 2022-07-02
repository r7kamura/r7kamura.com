---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/Pz6B8H4ZIhZnSQNhw6UNPKRgOdZO1UR3YG873otO90FVs46AaKSNdFutdJujB9RoEyGxXn2mtXD4ibcpRkeOoy2fJU3XUyNudxaxcr51DJru3nUIW9xUrtplOG-NIGI8MRG-56RU9YRd6_B7nw)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/RtxXWTOTOxSGykutlbjUT9a8KZCUVdQN_xZvG4L0J97aF9msyuFn3PqiW-gbOnjPeUIe6ZKm77kpTcru_O0vJW_0RV2qBtYDj0XWE-6veg9w-ZMuQAPOMCcXaK_wJxH0QCoxGQaI7DbSfq8aoA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
