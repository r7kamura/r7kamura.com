---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/Rh98tUNPnlQwWQYTNKJYI8Lwr-p6OBZC1hiUbVyDp39xILGeC66Ym2clpXc1Nh_jiB2AGWRD4-DjLS1xHpjRT_2HMV_gEtdyz6SpBQK8NX9e14-_f_vetbBnjYNdDFj4WIs4A3tWAAfNX8gk9mH74g)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/FM665b01jTsNu-53Lh8BekUWRqz7fYHGue5xQS9Ggxji9fOtHMj2P71-Je7DXp0DaQnnLj0wVjYeGBy2FI2C2imdMCTFJYcc_VOCm5Z_yuYpwKodDnjScIQklRmM_82DM0R0icD5iQnqth7cZF-KTQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
