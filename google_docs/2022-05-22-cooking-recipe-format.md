---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/kVrbjwXr94zKJNJpO9oaZ3nJq4rl1Cv7wECpU_5-BFej1POqp-jSBMx7RKOmjKuKOFV7LpH52XxL2_U7TKCviWsBg0ydJ3zs_wpkm8t0LhRM0oXdWiyW9m4Qh9NfUNM0q2Y3i8yo5qkfmIc5ywv-BDuB0QKi_t6hNUgNyYRSSBedoONwoAcEsWoQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/ggkhnML8ghLtxfxc-n4jm4mFmPhbhENWDJBmvIvrFCfR9j3ZTXiM4UghhDAIEhOMRaDRqEUIoV7nWasmupr_rg80rt_WdcHFuNUYTLovIa7FmMXINIeXKfAmYwA5c8wCsIX1zOl6Et3vK53S_Kfkm_GYOsMpyxIvHmYjPUKUlSQsXZFQKXlDCioz)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
