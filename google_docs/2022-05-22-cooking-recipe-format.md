---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/FQVDP9OHJP_nKwe1xUgQ5m-HwKCNbAijZOLLRts1kx-wNwbm70QOk1WqZ0OzUy3IjWkH_n15KRGz35VyPBh62Y4qQw8ToxoNOYXx9_ea1-TAWRxygTLBBUa35Q8V68a8DibQulmKmgwEqX63qg)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/YLANxDOQAfyVjt41oWAFnOsFr4uzTwwfBgHwW3v4mmoya53bOanT7RMb691cwKvvV6tkPBzRnoTVYy9vVLZ2mnkfd9bNlDc-_Z5cskC7mpZXktjGXy3bzArcV7nKIjnpddd8T6N_RMjqCkIEeg)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
