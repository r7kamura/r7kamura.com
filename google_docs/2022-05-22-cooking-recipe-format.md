---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/lBhzNK_OSj5nWrrwg2nIPTOzxsq4ScmEWZQkKit-xzwbUrYidTIIKjbFkdAAB7DoDcPqs5I6QUsuci3gGkRVFaGHHVHqxPwHGwFdfytKZPhafG_an4y_6KU6eBxZLLQURu4Fp8-bt2P3HB7U_131nh0pQ4lz2pRTYIlv1H5DE5VKkRdVjBiTdWzz)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/Rb1Q6xGxsCF-l3uHFNaRdt5VbKaIQxBL92YL4VrFgdBUIDDNp9hJ9rDMo1UDfbnHusNwDF_0KCrGUhKu2Nc2wYYUs5uv-LU5OsVdwsCCjY9lebyLxNbKio8jvCWW0iu6hlkQHqdr3vtCz_7f3g9b889Nhyf3Xhl84q5uRMQvvtINpvzjxCEH4djt)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
