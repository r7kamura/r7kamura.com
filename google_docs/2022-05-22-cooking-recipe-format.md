---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/jJjCBID6gsEOeEiXJUp2HJjxv327Nc5gFZii5OvldFS-JmAHNpOorBSqBCeYa29OJKvLuKTrr_5g7a66MzwibEyyquC-hV1qmQqD06Un87_o28kP_H-8akfMdHg-LWcgH6sm_nIy2VrOe0uC_dvoR3MPGaYarppr6AuLk4z2owHhY9SQhqsTY1_q)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/FUBd-u4od7cYTs2Q8qnvv2r-NEui8HK2ovbV94d0Bq0hcB2j3CkkkEE4uc9rOfwGNZNU-o7VhDR045DguMGE9UAr2me0eHQqoFXaFstRpt_xKC-P3-X04XtlWMzuif6wBgClRaSm73m8TUfw99ww0APpw8Y7871vLtEMEzXFhwPPK4Cs3eASwXyt)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
