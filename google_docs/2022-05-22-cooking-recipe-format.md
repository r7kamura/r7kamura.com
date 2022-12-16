---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/GzDAt18iem-Tml0Nc5rln3KMRyhbaX8SNR5w62lhuiBwO9Mn1B8dOd_SC4960m1xf6D4gIxEhs8Iu54ewr_aZhn4scKGf5uTwwT8h6_0sFW859mcqQInMmk2YrMIaFP992pLekCUYbdobv2w8wa9h4ZWj9n6-b0v-e_0qUWEd9RNeBIeuoXhHMa3UPBm)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/_sEPq9miVXFfq5hK8bwCxvq7ady6fOdVUPLgOAsOl77ZGOg0YaDiZTIju40qE1YGWMcz95m5V_fjRVvz3yrgx5tAdcavqbj9GjtSXeoaFKW5DNYRuT0VyCPbIeVMtX3BaPUvaJcUAZNIq_NujHRRHG5WekdNXWe7vg_NGGgpyP2rXdvMchBlswS2W_VC)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
