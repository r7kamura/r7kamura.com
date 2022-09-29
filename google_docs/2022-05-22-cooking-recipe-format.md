---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/75yYPAOqh-YOIajSSim1P8vCzqaZnLoFvxUMFBppH4eAoqsciy1zghqflnUbu61CXa2jfwsbAuoYOki9ptWUJg_mhM0H6-D7Sukcfjs5fxvdeOSHcyGooGueJgrzrO6nCJQcl_W_-iMlcMUkwP29MFs3UUHO_R1QWbTmfGGKTfdOymzei71FjK8y)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/5_LE5KjIuMLygD0YmKnEzfcezj7jFgvSIHsX7nl9JaGGm9zJXEZvQeCcoOL9yd_mXekP2EY2pR2puuvMwjbjJg7NS0fmXuoO3Aqc6ASNhD0J0A7xy079x5LDYLwYIV_E5JkPn2nbTOkXTEZ4iAEC0lb7TuCHaLRjJc43k3I4z0D9aj8aoV7MPLIJ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
