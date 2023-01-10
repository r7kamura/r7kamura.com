---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/Ou2i4yoGxT3_W1Uo2NU7nMMp_q4dYs8W4n0TMpWj5wdq0VLdbm2uGTrttbfxappINRfzZo-MsamoofaTsj9eU98dhC8ifj92-brIuRdr1NezI4yxX7kV8hUVUoelYFEA_OSe7IfU5FXHaGazQpGvAKhlfOIUhv5OOQ9tVXeXkrG6_L8B1f2lhf2YaHqn)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/EcFf6Kj_GfQ4OYqiv8xODRQhMYt22x3mRUeJ7CaGj5utykNXXkEM877a8Ss_Z31_3nj2d1BCpETV0pQ-u2M7F5LbmAtri9MH20FPF8pJGbVsj8NRLnFjolyx91laMeRLCZZfuNq_ACOl7z2_8_7T6H-USq-CtkX2vH2Nxg1H-S9o9sIxNL_WEpywl-H2)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
