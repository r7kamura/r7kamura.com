---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/M8z7_PQDsU2D0DFV2Vdi1ZPeWFg4NRYc1TS-2RY0Jo-H0zb022h1wrM66T08zMfAb_yg8Yjug0WIKulJRDv0zQ4EDZZP0UdcZgUF3QOvWFz6VV3gvm1G-UJzSOQlKkz2iNmzlRQuaYXaaXn_z3bERg)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/HlyEC9y41CCdqlmmRtOMp1Ms-7F1dlkteWkYP6eCpvGSQGb65bH4FZ5bZXvV9IkKeuB_IFeS3Sq2aRv6e_6aV0s_2m9Wed13Jlo5mE5eFroduwS2AwsE4ZhwA4QhgeysMU75IGvWLKDSeQk6LnRqqQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
