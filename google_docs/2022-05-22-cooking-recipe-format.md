---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/a1--kXlOZ8_MokaNLC7y24eIKSEMBFN3DTFRZzli41eSdvrQgkbcOCWzedg2xBctLhO83T0fE5Jb5LEbu-FPg04pqTtGrPvmkkYmLdFY5OZBdv_zdGjBk11CG_Tlt0y1AwuVLxqt_JcISJKqdsyODus0rj0Ij-X86twMhbZ4QeoY6QWKknu0mjk1lEGW)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/ZLVs8orV1pXG0oDgpdc6LP1D6bXdSbXMJ0hLHVVM9V_VxKb9nsL61bViAJHcCaqeSY3qhZzu6d8mkLerTjcjxo_qWhBkSExf4mTqq9dZcwTZYiwWzumB8tmecxxN2uBRnV_C7oUKvCu7YCkJFwYI9DdiFqp5w9RGB7049rqHtiIAt2jJWTzYD6n203nY)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
