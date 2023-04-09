---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/-1p5R3bZzep4BuBnOGESPe59GR1H1b84Iony6f_Tm4YUYq4-6ELx6ONV11FSIuPUpeOdeVo0gzQFV8vRimVdCmWkvMuJD0PkLjmSpvwRtbvr2GwbouFEvQrU-T4dTqL6nweuSzzLZ7IoeLGjOhl6Zg)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/1OpCvlz5Gk9CdxdzdDEBYWmZJahokB7Gtf9-toQ1BNbUWixlNbtBG570Fsivh9rY1q7tD7iWA6k3wKvNLp_9YnVaTgxzUygXgTq_nwvmfGgN2B9PBQLJVaWsvp3IW_bp5a6V1UxjoZPSmKalRRhy7A)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
