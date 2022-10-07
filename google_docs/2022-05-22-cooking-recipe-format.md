---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/BwKfWkm3dX-CYTiPyc0WHH_I7ikeMh2XwOG9GeEGYGiMAw_wMgwNJoYlMgIT9SPOyf73vDE7lp9AQULH3uSx-zu1_CpF9LLEBbQm4qd6S2kQix3GmXJQUgCagpOegu4M2ungHyYiQkVdZRMHv23dEW54Bdnvy10gMTuU7AMeV_ihprKQCCeo-Yuw)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/6dAYItFdE1udb_cCERPpnccz_p2tdsIQko3q5wZw5EYn_99bjOX1HaoNY-Ri48dA8_vH6sCsdDheSslPwETGl-XAx6UhTKus05q7w-IZfzD4g0BA94IcE23uxJkq9qhNfB4Tqf0LJQMwd_Fx9BXQG6rqc9Segj6qU8_NZgquexY5WlYy50fbUci7)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
