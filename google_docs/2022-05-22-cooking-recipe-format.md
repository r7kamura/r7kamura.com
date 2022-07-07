---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/6vgTymYJ9x-3PULUqSJ9Eq2AavyiWx6WRsaLJA6igTRT8d5lp6olZqnwBBqH533vXrir3akvk2Wko7jyioc6_AdKn9Tw0wBv0pda4gfyHcePeEXNpLPeAg09vh8E5qD6NmIDmwVotFjXOxAjsA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/ESd_SrTAw8NUQBoF3gI0N1RN-JSU5j5oiNLzBUQd7eNIdU_i7riuiuRFJqrnApI2fxBU0okGMDRuz0SMk18m1slBJBzvMY7KEuCzRCDCuU3TAhf-bwgybflwjx2en9dw8DKkmv2YBY61B-hWmA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
