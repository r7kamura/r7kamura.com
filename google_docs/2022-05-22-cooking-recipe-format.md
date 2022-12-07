---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/p4ISluQ8hqSCBFaznvEEMSLI6vkXbBlX13ts_Ddj4yfqBdasKyMcDwQgL2RVQ-phi5dMM99tkA4-PAs3AqaBKHWzOT67AcixmLiALV1VtvW0ihXDTMXV0k3pkHJplcVfYZZ1WClndmysIXoHt8-Z-GArHp5PI03afRwZNdlyY3aqK0H1vT9ZUJWWg8hp)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/oR5l_THswoY6KT_F66Dc5rTh0WkkRNXBGF47WLiQ4v-I5O3dgdbcfGXgYh93gno2Ry4CRoJ9Uf0pQY3M3933wyifTw3NQU-Xjv5hr6RqyJS-eu3VTKNoMlIIEloQw8f0j8jNApLPJtBzrh1HFPphBcSNbAqdG6a3b6GD-hhvNqgMCE-RSLisQJz_E6gk)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
