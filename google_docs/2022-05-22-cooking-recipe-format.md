---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/kc-7rFBzYr9AanX7RTdHk077nlQzzqJQIkSp0lF4Y9w9uDTnCX3HI0OfCwffD9-brty2RuZpHjpvJK4L-MBqFXv_prNOSG8527jNkO90HKUTZyJtQI543qOInhT5qcLmdyG-4g6YiHJxKvasOoWQjfCrVwsOER89ao6Vaem6EldFrONzgF6tLXjn)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/6UN80P-EtzD4NDeN2gif1LIlRfu7G1sns6POkU_v-7IAAgTqzEgDLuU_AS6jd09yfmA8MDekHmXVXMddiF4R2ySZcEi6tYhl8SNrIz2Pmf7TfOzmDXiCXdfwbY71p8UAHTg60rn80EUH0sfQ9YPB6r34XIev10s6Q0VI4JfH-5PXbVuJDA0t5Fot)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
