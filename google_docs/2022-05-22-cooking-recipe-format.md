---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/RZ_395SY4IMt1FNh30fvVOLuE0Q2gab8M9wxzM80lU4tzVhuARCOl41oWH2rw2Eknk37HQwnjGNohtcQDESacRnM6DfEDEsHWrttjLCdXJVdn7OemEGhJ4wloia3kXi1Wa1r01Ey_fTFTo1hG7PkB33eL8fU2LcVvy4cOb-Y1P_Os5_aOe1cK1U3)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/39X2CYVGbau8WWp4j4_tyh1YOQx2YUv_6j33eFQ46dN6ByYkEZcDT9rvW_3m87efU-UK1GxGucr6jbemb-LGhThuz3BgCbXL_F2WWOIIS7ZsoPzTfWzlcLkIZ6xjLevSEl2jTkjg6WyOk6AivDKr4-Pd86Uzn5_3pE44K6Uwj4MgRMQUZvVo9HAB)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
