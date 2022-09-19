---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/eVYkR5x6fgvowImfOwAD8ZQA4mm0VVrQwlt8ahpqT9km2HD8J8VkJRpkv85fppdpU3232nqSVGfg4TGkPBc1JO77o3cMaW7QRgmKna9rdbAkz_PlN5Ybw9lEIZRquNwR85U_T3HPiAuXvXVTvi18Pf0w70LS9zimDec8pXgINQ3izm1K7sbaxpau)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/WpHeFy92g0lN8fMb9TSrZe1ITpGD25B5iJjyfp460WhA19lwC0XkSDYymHS3h-tzS_ybU2mlrOs1MDxylDon5oRMIiFnIKsgJ6ia84WXk2op4AEnho5Ea7QDIzG9e8I2QSvmcsvSWC9wJtuDPeAk5USyKWUNJZgZqmsLlDNEoKgorzekn1E1oEpN)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
