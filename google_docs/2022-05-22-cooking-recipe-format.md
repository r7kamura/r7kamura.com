---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/fO8-rTQBuj8k2Sd6G_Ca1apl4bpx4ogHypCzyJM-mfmvPPqNLdaw4aLfT9bPGQO4dx_MuFxNz5rUwVWbrysZoThs06-TVJ96Q7gqWChi0N5eZ7gqacnTSTQsKm02GSU7xL9MoriDQoLWefehdg9Dddxg-_qzIOeQ-C3fN8_x4Hd6mukmJ_KkiML5)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/6MZ7nkLhi1G1kbKutkx47clNv1C0KqK11m4QuHc6qDeOt2h-dr3rXrAdYNhcDY-Hfs3w-5ZwMs5s2EAvJ4egj-fZWfCeCA6MInRvChHzxBkX8b9aegk1SgYHXy3Xyctw_WOeIdDiG7oqoOUcxqrPJCMI9OwYMreOrDLhTBvM5pTfkgc-tZqXaukf)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
