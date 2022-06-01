---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/i9Oksq6VwNR-d3V1SX3cD3h5yoGzjnqbhOepa8QM_c8j1mx1PrbOVF3Yr6OQ0uXcPtFKWsLFGfth7cWjCi-X3s4WGM-qrbYuG0fG_lNgQWHSZjRXXKghasTY5TNO7p7Fgt6LR3NDo1fU7bN3EQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/KZA3sjiXcT5K4w2Ns1ffM8ZN6aF8bDAG3bdcT9Nny8zGNFvATvQDEpaJ4GtwSF4dreZ6l7U2NxTP2iLVPLiojryIsEJhvEmEo0aU2WUWMxqzs_hnFsUMc7yaTIBtWC7lYKaiM3td6Kfd8VI3vw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
