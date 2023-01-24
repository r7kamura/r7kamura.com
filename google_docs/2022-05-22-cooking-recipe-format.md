---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/Hw8TZ2Uk9GzjfI-Me12Am5yCOL-XNe9YxjwI_vTbLJVLNnb8t2TGOF6RF3BUtCAl9oIrRCQK2VVK03hN1wtNY7On5VrW6Nqndrh7WdH9EBYwWpNneS4_9dmX5wHXle22tCaPNxMkrt-emp3l5rn_tIAYb16PCGcNDTDBfKnEFqWXtLTdIFoY5xBADeGB)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/v58gWt9MwXmEFH5b5YVRWAMCJUfsI6KpMpZM-W0Fk4c95stoVil-InEhge3hCgVR1MRRE6W2f2J9MIbzIAiDA2xEq-1uO9kChmWgZYxvgP3_AF0DDppKNMTXySR14hAUFunZFbgSXMKIxlETXUt3XyaFJWwNBxc0TVMq1dJPdUjxLvioVB2nc4_qODWU)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
