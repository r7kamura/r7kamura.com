---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/_fhVoim7f_lJL_4gjS8WjDHIf1YIMboZpsUsQxBTXse-BnhZHE0T8LITs0SDise5sIQHB1-Wxd40zjydVfX91ckNrD5KVim28bE8YO6VH8p7o4Bi31weTLd71r8rr5tN9xsH_0YZlRgnl21-9DTzrP8t_nmVmmaFxNMo6H-QdZ93VYgG_-OMPgdkDJIH)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/qdbkNDP-SLFX4UN2PGQBLrK5zwfBrXmIJIvB3AvKvaML8IOee50STWEI0MCR4vF4sCVC-ZhpbCWYWkQPZfSouPgN-qlpfMYqOQZoIRKewo1vYsKdLTO4vtWR8gk9c_nEB14Z4r8Jg3ROigJNOLOcX-Rb2fWkcCQxJF1usAawhe-OlLuYPvQxQACAHjZq)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
