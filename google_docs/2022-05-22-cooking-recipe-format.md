---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/wPrFUAkWupJRP--W3bDZugsbTnF5DmOs9dTKdK7i8tSBsxcx5c1EL_BdPWpdXoGOMp7rJKykbV_UBJm4HD5IeyShk1J6AUS_d_IBkcDoehUdMZisRUWr5C_t6iVGngVEdNdTb8SCMt73Q5bFBuL0i8Xgbua3E7Hb2V36hFwFRl8S1ujRcz_wQxxPY9Yt)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/13PvuIqMj2xbcmuCAal1v3HC_Rh0JiMAvF14caOPxem7JQ0kS0KsOVUuSy-4pJ6pm01U37HEmW_1KlygEdAQnWxEWWOBzcdzcNvosAXgX18g4owwqmxaTn3s6JDA4by4dmgQmZgllOWKMiAPqpTCilt5lfiavpQbyTpv_C7kvActGSstTsjOrDclUdb0)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
