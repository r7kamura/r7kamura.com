---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/nd5KRKntgriBMmyCNs4_wPo3SPNAkFgSE9PJEJnLcQN-yd1s_sRjPNF1mBS-btknZJl6HRzalu3C11oCKRSUVJUeUIvqhpra8QiGfRafQuumsw88O-jzFzPdQTGG7A3Md-v9-UBr-IsHw3dhzqpWqQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/M7sZVJqk4ZQufCe-7xshZOozK1C53J6fFdykF56UxnhtLSRfhACRyeEk_qcuwsGU14uZVaHveXQ27LKaCQ2r-GbT5xKm2nxVg5UxMOioMsW9XAe9mGgNSPxriVOmlrHBjqblIdRS0IhqZxyblMTOoA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
