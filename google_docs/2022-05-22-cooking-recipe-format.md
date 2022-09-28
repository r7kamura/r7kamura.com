---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/QNeyxs7--1wq1cnnfsQSx0-iQzW0AKTlXZZbOPsV7RXBMnRilulG_GOxE5H7_w6YAhc5aVKVa_5-Gm3SwPqd_lgOXNGsYEHrrjbPSS5snC-jqgTSC5Hpg2w66HKQbluBwCG7hkoYxj4b_vmEvogN9hZX22imeICg76CAhnaG8_PPfRFrqU4tPOCw)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/Yhh8GY3aJQcMCE9rFWIWO904l8a_sZytmGQ7P0l2Thy0KmxKmRMGmQqsuQ3HphdgBBZjCujsexqrl24eLeVGKKOFCWJoVDrvDMdeOVdQFG7bCEfFywSzTwroCLsnx29Rx0qr6d-xoUG1c6LItrFx6CEjAn3ARHXEnccUnfChsbzVbPFXE_lgQhLb)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
