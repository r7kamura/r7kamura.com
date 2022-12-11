---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/MsnEAQZtT6NZrPdxGkptsYbcEmu4_WTBk4CVaNq4mQ7jSNRjF65yqfkDMjxfIJ3prpciJNUFugmimyuVRXKlnCZNhtwjyIzEhExVoq2-CnYjYbXsNwmKg8nWq-rg7j1MBOlBHZNjcFs57lKjrz_oC0qvGk9hgcq1yuG0uHc-4O_BEFubHo6nJAO6a9gU)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/4l4GtplMzhQwPQ_l1e2z3FCp76BXcPJeRtNK8ogIn_c4y2GuwDMw8-ubKq8W9LlD_v8GSIOB8VQGEzPiZQF4UgjQNe7Uk2Acd4DAHuvguOlLacvQxyA9Y6c2u449dQvWc6_T2EbNSz5IRWiwjsqaMy_Q-grAJMALOEd8QYyWwUtBjKYFVovL3XQHjqyf)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
