---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/hhdiuc2UnrORVhANRKRE1quYCiidauuUTSuVNXsp2d8gpUmrOXE1XdHgS06qJoUbzZvw8jUIt7SnGOI2_5-9PIERubPqygzXCxXQNyU4OjlHfhVk540I2ugNyzXf2mL3Vy3eK8cTCgvohGi5g6aMCg)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/KBbL5EEtdDY--SETCMTmvwY7zP9e6HpeZEzVZkkhob8w_HleLHXUz7_XJ5PDI7Nl-22BDJ4DTb-Sass3zhafy_AlQ7yljToICiQG6UyjFLZ8XyBrncmqMfFxPmTF-a3TsONn8_bT1oxoEC3L0-oBqw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
