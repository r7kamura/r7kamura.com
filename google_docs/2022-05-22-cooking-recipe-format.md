---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/XIVcc-Qkeb-GgGWBONcY1OYFFn3hih4DacqSX1maJAdarAh9n4z6LH6N3iNfojSa9FHOYUinCqrKECqkE7fYUqzb9PJ3hVg2UYL4ZOr5svWCT6bhcN6me6TVQS2KyJr7sHVLN5j_IFjoVGlg7LZYSuzdpwRKkE1I_78NR-AjndG1WrDdZeRjOjt_Nk5H)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/T0ZsXgCSgHJuGe2IxXFoKwV3x9mKQTURbznjr3SzTwHUi9tt6ZofSYyCvsD5lRvgzdp7Y9fBsmTGma8y8yyIdhn7AjG8WvaCQ_6ZsPAus0mmQL_KIJ3ESHR0yXJ4j0wPAcmEyYeIszM-gxpPAb1jl4C7MYcmY3J6_PFYhSFjosAE6t5325twPGHdvD0_)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
