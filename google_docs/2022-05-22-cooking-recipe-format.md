---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/AAtCZkXG54sTdmp8wOU3hMzPa0S6P33-XL3ss04yPZSFYM3vExPYFyStGVvJQ0mvIb_05HPXzVaJpIM4jSOGm9CaCGIbtn_S8Ac84irnEnfSk117xvnos1RjWk9seTmkx4SqdGV6l2Xs9-t3v9Oj_A)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/ItP8WDrDmVj2UfIlEHflqcyYcrmCvwFNQgS7_v-kI96kt1Q3AMX8Jqa0G_KqYoz9t5caL32iANOPIbaDq262TPnFN1HqPW7EpAXcdl7UVGY0yTodhQ--rTZi09duBUK3wiw0M00jAzO30hCAH4pPrg)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
