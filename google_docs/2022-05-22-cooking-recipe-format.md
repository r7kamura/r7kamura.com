---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/CuwDXyPHVuSlljvlw2qi3pGDLJtRRCni4qF7138MKjiq8NgETq9JrnrfhAqFLwWMwxXPjonB1RPDqBvc1rbgfJFKi9jX8RDz2KNOpg3fwJqVD_WNzeXdFG21cjaEijEgE_j4w2jz1ugJ0BfdkBL16u2__vWNwL2U8MNbLHESlnqRCkljj9m25vGx)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/0W4Ig8RnG_rxdKM_p0vZU5UmDHujqpjg2Inkg-MaBtARrLehWXNa9CDYRCbIxVspH1N-WDNji74-xHR8dlgMGuLgg8N3aQ2t5zRcTwE9NA16D6bsjCjH-NEoRYX5GmmjlOAzdvXhubPAv-XKpSZ2aQ72emim75boP0DVKrgb3EQ6oK5zcLHDuQ4U)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
