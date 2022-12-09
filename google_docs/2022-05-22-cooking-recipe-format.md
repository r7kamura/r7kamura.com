---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/1XTGi96FN0Rg22P8hy__6EXrBCsRHFerEClCF5xLHxqHM8RF6qmLi2IVQ-8QLmV9ly52wZv3q329MZKK4Wfx9h9crn49L787LcUPPUg1WWTQDJshRMc-ViVC5r28azvnrKfRouEz-y-5FcgyS28xDzYYfRDT6ntK1AEnE8CdYOSYMGZJjNHVh5BKcEO1)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/h8ptPFhc4hfTAHDn068t4tTb1dJQQOgLjxZl71lkxJUk2jixX-RsSTxtCUFxOBxguAc4L2x1pjThgF6iAROBdCd5BRahQ-7CehT7X7YI15dTUbw4ovyHIt5xVUwi_PvQu1lhG2C-XJRK1JKzXJXnq2KUYzVuJpzH_Khna4WyLddBVOEsV3mEbX9Hd0_S)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
