---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/OAyCHRBS4Er1cbR4DB9JjCz0OpS61PoFJ5Ki05-g1E0tSslSQqi7zXAMmDGbj7eSPtuUN4EpnywxL2E3aZu_SThyx8ChaZAT20WdiYMT52vmvjwR9dn4Vf18wSIV8ip9Dj7Za0Ls6x1uopo3Xw)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/69aL8i-C5TxFCGiDKDu5LmUzr5lr30yXBNcwCWNzs6TvyPZjl4ZhQd5LlIO8yGFPMVWBb0WufuYg5bTkv13X3qEGAC9CmRo3q8o6i31Of5-1q0y8sxM2w9egpy4kWqkLTdykgAsCqDpKngxEAg)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
