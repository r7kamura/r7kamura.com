---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/sIedF8qvBmS_B6_227gp6LojZV9JPvy1egs6R0IdxwFyvOAdCye5GQwHf_INGsO7_bV6QMw0CobTyE-8x_nwvakx_HUW80387FwuVYvRscT_m58McacxmJGb3-suUbjK1NHBA9XrrWw5vKagcdrwVxmaIVnTxGeRNg4cw9INL-xODtLeano_p3vkLImr)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/qFbjnwe08pF8P9j07WLIMk2cBESOCy-aiWlG0PgswUZZDoMmdMkhqD0YO1X0azDtygDAXeF9vgXI-flQWxJCh13le6Vt_LiL5ziOSWURcYAvmRbmTdKfIxbpw4qzSvsrLXILcX5UPP-6ACyoXB9aPs-xcsRiTC8DNgGQIlh0JfU-w025mwVa0MTvLd-4)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
