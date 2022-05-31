---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/n-bZWdKZLb3K0r8-XmhMoP7KWum9y7CEXrk5fR77hMj0_iNMpyzpMs6MEdUpX2Y4_CWpS-z0AnvwWIe4pkrBkj0kpPSpSMBVVf_BAp3sk_8B-kdgWYNRWqgykCUz_TZ1cor0HbrAK1eNkCNZ-w)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/9FTWPPH0eDcipRrKgMfkq3X-pkKmBIqOmK2CLcPZ4V8XzoLcgFu8X-Uj8iK17qOw8NHLnQnp9nYQ0adxbqHZsBkL53BdF9tvOsPiLI_S1XiaPs6EuSqRH1_dvjUa2wEcrH6_lPJe8cJ4z_Rs1Q)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
