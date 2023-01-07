---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/8YsGoD9C455N4eAdufcgPIJLxM4ctisQe6VplrZwlh54eFO0dFfDXWsSatkC8iyZ6aQN7NefzusgX5JpdpRlKBokndHy3qwTu42aAKiuXooJyCT2ptSoJbHFPqH32oWrdK91qY6ojPsYk3Q8k98MqoI3TGNX9YgZRwpWuhQ5swg2ZVMvLtBOV9-cbd9x)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/1m4VQC9x19TL9XqzQ_QNqLsIeQQ9GnLKEwWC-iQ3kKvw0gua76BOu4ew22u2QZELb7xSrIwjSjn8KvKnWLLAdSK9POs_NNRqgCnyK7zC92r_6qnzwy-QHQfejDMY6O5vBPiUsHebI-wxAFrNd6Zo_IUm6lRp7-iImuzpz39rc9NAdW8WvuRWWXMaQhXM)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
