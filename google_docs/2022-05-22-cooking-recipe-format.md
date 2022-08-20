---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/K1iE7vm1WEF4lFnKpEWS1CBz0ELKCPdiUSbdWWVrrfRPJv_d6fMRubf1rDIKwgZJJlU-Q7PeFAjOhBfDt64x3VDbg_rC0z9HD7n6pXRp-cml87wSKbp1SsoEEjTgol3hJyxXyk8eL2F4hdXL8Q-WUA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/Fhc0sMV_RtWBdBKH-0Iw85-w8p6MDhm_bCsM74udwbYEUYWNW4UtiII-UDDH_NU4cLmN_yvFSSRGvfi-YyNbXxmUJgfjGvLxvwXNj_7KMkiOJLV__YiZpxw8PeBzsonZ7NjK-XSU4hIZHH1bK9NLSg)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
