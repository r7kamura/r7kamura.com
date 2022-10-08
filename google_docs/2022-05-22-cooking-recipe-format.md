---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/_8ZUqTlU1UNb_vwT6ppxhlT8v4ZbuWR9MIDULb6O7PuinnGZRLDwSSG0m_XI7taQbTEkAdowqzqRwP4eyRCvbBtxu1MbjmdxqdyUl5Q8wYGsssnEM-xIxkud3wQ5nBxTkZnVlYfLn0g5CrMxRQbj8DiY_Nr2yPO9dhIfmwajUyTiVPD8gxtj6X2g)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/gfKE9FueUvAN2ikSYmgc07tFbN56RbDkw2cgTYkFAm_QlLywAnCf2l7xxhbwrFapD46SuFpMfrZfeJGeuUS-p37exma1e0GezcofKbD6T0nI3DaDkJGX0SaRbstAj_aG8CFONrQ0m_kJuh_4TnJxhyj0lofGuncShQvUO21By6CyIs1q9c51cWhC)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
