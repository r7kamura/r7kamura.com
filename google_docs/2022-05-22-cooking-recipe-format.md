---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/_ZMi_ck6_5ASocA91FxXCda81RvVw_I3qc60_ddzpYHB--ORxtzZ29h8RZVkpCvRTVlqofypcNw_1QSO7PF6BmR5d8TXsqxgk14s4MG4AbZqdkIp_HTwDSxBZMnjsdDbyqbAxrR7gZOD3vuEKpzKtLqSlr8Zt5dHISN-djkwzcZvOoIcAccRv6D-)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/1LZVtOTkz9ivaQtDXNfPnsAfjfgP5nH7LFfQbUOJvg-CUZHD05ilrJNKqNtgtpe1ma6rS6sLIV6xvZERWPlOetU_BpnD4yXs_nDClOxX2ROFLjqn1EkJzmkNspXONrkgGLvINNT0nwwqJPo-vZaYUbK04iVRC6_sAoLR0bxXLAGP8aYSZd6a5wMs)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
