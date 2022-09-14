---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/zJ1rsxhnHCdk3WPiGISEFRGRS_PfB7b8LQi1Y3d1k3ijU7xPwQNh3Tv1d7OkoyW3zjHueF7eT8BrZOPsah81UFHk_-DsEezHpTO9ODymtqpzw1_pgiWSwU205IVKEBARfvBRhoqMRMpvLL5bXbJdyBk-RAdHdgjY3DXqH4wvwEU5jStTcv7eJBOf)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/EJTxUQx2WXgYiZY01vXTmtX3l_yXFNcsjZl3OlZiZ7T2Dsj8YRRcN2aEMTvGCM5Bdj8Pe7PoHiRbkC4c98XZ7rKOdsR--eCzPBKijkTMpnHD7BVkO3Zj_Z4KfYXm4j6aXrkefPJ_rxBVXLWTpHip4IFFXaqIsQeZXzJ_MkrpHQPhCXw0_93AfBjn)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
