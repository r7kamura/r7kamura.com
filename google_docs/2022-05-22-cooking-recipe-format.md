---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/PPKq_2WarvDXI-vK8iTQ3VYzQ132y-3mCbSqzIcCX69LZRx2YoB4Zi-eDW6cyuUqQ_bCGjmgAm_gxeDsgvFB46eAHpU2zw3XwxQAD6BE9RBk5PaB-LNhzgDb18l9GaE60e0L04966HtKPph7RQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/bg8qPeeS6Y_62UYQYg2pwHg8fw_5WlCNPkqF3mXV5CKQs09AgLAXOL1X3OXm6DgpQ5RwDZbE9tB2U2tXCW0d0WW2YjtVurgiBlsk2072Wulpd83A9lU9hxHUxQxNWz6Hn2uaDSctfQ6GOlWlpA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
