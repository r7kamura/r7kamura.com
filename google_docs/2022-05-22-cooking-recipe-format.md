---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/El7ZKmxLxyvq42lcmFtIMGpzQxS143cMGHh2T-NUiqoXBPr979oHngP9PVBtg30P5PnbrFOiT8Jw8txcZtuSjD-lAd-1UDPkkByJGFgIIYZFWWO4kHBCR8NbzyZz4FRSY_2c5OP9my86Ce5UADRjS9oFKN4XG_gopAJagBQQi5OjYBVWpGfC5_CY3Zki)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/we4oOYJW3km7-uIUrtLovH9BlpKLtdb117jAYdYcXmcukzyIbHveuEz3oUeFKHPP9laGTYOGBjOfa8bbBUU9jdujOLcK-cMmgqbGzeMxxKAaPaMi3GG2ilyc_vW2yMmPGlPmaZ6b0ktTgFJkMCuahsKD-j0cvbZq7m0oKFuXZEoilyy7xcM1nQgceoBn)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
