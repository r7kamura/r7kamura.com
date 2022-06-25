---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/H6sKJeWZ6fPhP12TyxRzIqjpVkIANxkKnRAS3OBFSy4Vq3xfc3SXN8VQCxfch4KG--CLctsW2UHZNVbLIx0JpMfZzUkj5uM0N3Ca3zk7cm_jCQ_nBJHF0wrsxj9rOQ-PStj1mZ_R5JWhMIK7vQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/Oxl4HPoOzTb05u_QKGSaw-fND9T5s17dwS3ZDg3fhrVECPFRLgGlj-5hDh2Fzf7BdEHz0qRMMXNNw4KceZP7SF2Gxg8Ma3u4bgDu5IgCGm3YfFa4WvPG3n_qzoY-oruvJVVtUhTjtIf5zRtAyQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
