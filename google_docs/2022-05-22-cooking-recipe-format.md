---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/OA5m3azNyNnlkZcxIGpBOjdA-bJH3ckGlT34QkGSipvGYUrJN5XeTwaiHYbClQDHU3InEfw6vb_IOQfeuQWYf0ck9zCtP6rG4NFGASEr8SD0_fAWKewUnP-hsWzG_rVXVS_lpdch_9EyqYRDrK9l4Xs4DvLIQ8HeWtLzrXSJKdH_2p2Z87yPGFWk)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/LF_bKBQ1keRUZc1F5HcnY8Fke_mPDvIFQsLcsjC8XOe7F6ugsWejeEwO2ydM4lqagCylmQimGmD-UUfH15YVT9RQR8pxSZz0Jm95G1lpUBFWBwuPRk9OqN5alrS9YMIdS_8lgrRBKhwfSW-uq4ObEi3sa5cfSYq7-IVyxw21kmk-jaTH-W2JX8dU)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
