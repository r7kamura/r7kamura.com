---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/wBjmvQL9vi0x3QQGNwh2_6bB8eu-uwY-8OrqLq6HeDc-zZvYfozCaWJ5wNXez_x-3gRqhKG3lbB-NJFbr_nxG_6GR8Nogq884IthF8WV_TMXuYGJH-xG8FM_aPxubQtCw0J1ySnM-7QmjdP4nkj4JFecmKasqdzP_s3PpZp1VFRDAghOMAGkrYI35Mjj)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/iZ6a1ZyamhYtNr5tRf6k5FcuttyyRiLypWngK6vpsNLFagi_J1hgF4a7pz775fCEZ_Yjb_pGZNV4voQbVqclZxSOxDpGOReZNKRM3HwpMU40RZ6eKxgsgglEv1ncPBZU3qsYuHsShmtHAbjOa9KLZ0JVHYZUPXQgc6MZRz4Ib3OLwfsgUyCNbxXgyd9P)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
