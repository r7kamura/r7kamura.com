---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/rmg1kZ1Q4kwChVIE0Wf1pKF7VFUKilr7K_mwmYDLV3XL2k9xx_eqZCtyrt15Q3MHY1vEJp0XY1oJbpYTSZwqAA0ogia1BMTGxusZY1O1zyJGE8tLuA657UIGFezDm7PLlLXyt9BAJo0xfmcQ_HAfGOII89LpM_PSAmTZYCAc9xmgu4UZ0Sn6iSs6SVuM)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/ZaesAsjOZCi8L06Jrs6YfhJEAdxgWOr7N27hrIGnDS-uL9H0tzKbt13lSmjiklIK0NNjQlhSmQGKOp5rKn2Iju6rqx8VfU-yYHqQ_EKZJwVZl9h_GIkFG7Dtkfqt3_zCsJ3QJJfGl6P40GqMSJYm5cSu43NWe9yl3cTf_mIJWofvx0v_0j9cxLVCJ9hM)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
