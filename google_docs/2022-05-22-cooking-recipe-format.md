---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/Ot5IDSN--jlCln1WqARD8gvWdY-jKbsl8DrJFD5iAzr3v1HHYdT8WTbTurO36gBQUcWr-ljA9mkvtnasVIfv4whBqOLq0DrwrXlFkpcZ2SZpXPo6C91N7pujxUgSIZcU9Crbd5ahYgAwJAhXLBwtg1qy_TMKq3_9qjfcs5CuH-BMnZgUkLCacmL_npZW)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/9Qze5Z5-U_UNRuwy5wg-ksOGm1WsoRQcKCdn_kXDNiJdSn0BVAqF3ftCk1MlyCT3zu7CRSuuW8pnEd0lxFRibtPaCEExnHZxq7d3cgQUBBBCBGlr1WWZ8A_SkzVxGbP1dt9PJuIZabSBBgw3jQ6Or0bQi6B5_nX9k9bWBkbPyKAJwplNNo97fxerIFof)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
