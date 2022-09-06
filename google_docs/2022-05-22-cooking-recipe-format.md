---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/jUhfuvS7mVOdXWyc-Fvayza4zQtPLl52Fi-YZ2Qba_XqXL7PhmMyqIP58W-0H2-TEzV49mK3gVBsYj9CCrI58rNvz4IdplACiQdMl3gxmj6qxyAWD63SDvwaycra0u0bnRWjDaoI43vUh6fcctLSFF76Wlkqv3UVZYZduSdcCQdupNqPkymGGW6h)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/PZbaqX5QXsvzk4DvqTtSiXG5CsZYs-X3bb3Gt2zgXDByOCaRngFYmPF1k8hZmEeOErS5w90Px-j0_ayZ6-rTlV-U07CjYs5SZ9EYyeu_J8XM1oELYEck-YXgsaedMcPqznpPNQ5_vjhifHjXOaYBFTphOCHL-fwjc-YAGgwy7Wie0vDsgnwr8W8J)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
