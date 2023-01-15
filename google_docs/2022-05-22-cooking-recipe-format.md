---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/1eQZZOQ9AuJWb2Iv0XXBByvbztKs4ZDbZQ63FO1RAffr0lA1XBxGFXqvCVKUiJ1aGwT7NbqN1p6a9SP3wmhrzAfWv4cFJFY-V6ENMyRBvhB2JobgbL__7VyuK8HA4dsaXlV-KVIricjDg5UMraZpkoCG_nhNFtl2p79LcJa_5oa6CBE67ZneF--ZZ_AM)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/077d18qwHDnp5SRY0hVfkAe2HyuzAZL3SYVirX5nGpTYYRov5b2yaBRMHtCjhUovU3_Zad_6WEouxffC4T9dr9GaxjfRZHWD-b_YPAC8Zw_WAWuP435_kCrpLvQxQa0nE_4ZL7ugiK8jTpvyy6wdQNOTL9XFElJ498ANAJxFYDb2mAZ_wIUe1ljdEVwv)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
