---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/RBMdHevVN_UxusV4v2sbkWoDtcU5is1dlkEHFihGwploUOK5Ew7edIAzkYKf6ki-1Ts73EUW52yqwHeb1hz3MTrE6wrmWaho__4LvUrV4XYmA0qFyyqCeoZLd1PHutD4ukUgRN5jW_DVRfccqLH9J3P9yYXkSme3URNPAWthEvL_yKtHptU2_DajqG2u)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/0uPVQ4YxYoTg6J2wYLfqZUzKS9l0I7NhoSmbR0cozu4SzTkG2R1p_3eFDBtixMsgP3yfbzy1tbDxZm19EvijtjSzGC7ZksNqFpDqRbZlEIkuNKPlXN7dQTiiCQU6BUZ6Ubsquci5itMGV4VPwP1TSksEuMmoclahiIDsIUSHHrMzfSE9lucG3guOrC6L)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
