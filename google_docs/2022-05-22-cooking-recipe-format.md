---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/PkRrtc9IzoNv4t8wxwAU0BQEA4Ku91vV2joVluwf3Vp_KhUDB6JMmci2LXwP3-Sl9MKYPu5ss2vSGiKm0L6S251qe4xyaZkUFnDnruDcnJ5-KwkIr6lDzyMLIQ_PpEZ9xprgt_CLYKTW7SQaHaLzQA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/0IKrKpSN4WStM03bdK68Mnz3PT6sBNmeECjc45UubV_nCAZPrNYysXYKSDyogT8LVG8uYqjMb3aOXBilkn9QWmHiJYSj_5sZdbaCSbMrnG-2LNiQH8VEN6ueP8TpIaS-d1R52O9EWY_cnbHZPz5m5g)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
