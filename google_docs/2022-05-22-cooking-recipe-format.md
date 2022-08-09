---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/6A084iKtGtoGZv7EsYPnh62oHhi6MAT7Uq37ba5lsjl8x5OuB6in-N5gnovPEUmKxjPvctObBTml2BZH58G8LKl48jvduG2FDwdt_GvlePSwlp6OZTiC6Dz89wNftHgWSQDcfbU0S68b5ysEYuz0JQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/v3YJwLKWFzwQCUSoYzKQknk1OO4txlejrH48S18_Isn4p62N0uyTs01U7NdtN3Ul950O_A03iaR1NaOuYW2IX7XwgK-2bz_TE-32o_sAef8eX6KlMy8gZmUFJJQoKymQSBhp9qLlDw82sOAXsz0IxA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
