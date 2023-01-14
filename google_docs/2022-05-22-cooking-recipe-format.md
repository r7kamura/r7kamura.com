---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/98JMPu46WV5XRVzuyH0mbzxSX0-qgUI0e0beuboqX2RJhTR7fR8gqcq3dAgqkID0NJs7eGjd6l2_LsGUX5CElGDmmOnpzoyvXea573v8PBxXt-ljol8lKqGcnKIc1-UlzgBwe6MeqXndS9qBBxMVVGLd2BW5a1SlwTiTbZRtKH4xjHks9h7BPdVYwalk)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/CSgqGkxlojGVVo_Dveu7rCpnnklLHq1aGcCCbhbou6c8oe7CJ_HbSGbd3-hdsOL5_8kconLNQINWsYbijS2ht-l42Gwbn6puH0wiBXoAf3w5RvKhBDM2uLuiivXgAJJ2VrNjpUGgvpERE24nRLKTdV111Mp-_f9hY-HYrXYZPrlg7XYolksSsVuwOO0H)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
