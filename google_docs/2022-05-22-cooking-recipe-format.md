---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/AUh0CbULi_87J0P_7sNN_Z9lIO4A3UY9WJ3ptD_U45gfzsKd0WvzbiSFr-TK3H_FzLFD8E_1g7_nsAN9nX9DBuU4u5BzkxiVCO2F29AMwB4sVO9hzXP2DEeG1Wh8lTI5UpUmeP-3XpqXjUJFF5snxQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/5vjLVSOhMHxvkEQsW1bybCPcwBTl3SWzs2tVnGH225rjUUZUJ2lFIDiMLGZ9OYNd1TItP8dZpHnCzh3xfSeXvjiHZYBXEkejRzJWbshy6yNktkE0t5EZM5_xMc0aksR2irrFMPIHiYvCZMwd1627sw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
