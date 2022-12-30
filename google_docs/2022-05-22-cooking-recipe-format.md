---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/GkULxMZQkJa0OFBZE5RWgbXw5QW10T0aoIZ_BuMIBVPBtAYXDPiU0md8eQjFTkuJ--BpQnG6qrYtL90Sq-13gLwx9NuYmZC972a1OCNpIcchFdqQNG2K24lpB9bpYbWgsNyEMf7dWmCBVKvOAg_UOpVeLvCCnvhSxghAkDBQbxwXUC4H35FiGx5aSz54)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/zIr4o13BBbOZ5imLtoWUXoGOP5ZVgWC8JCeIlT3eN-CHAJ6oXvalSteXMIEkdnAu0VVi1p8BB3h68HGEYi1b4WjdBrXop3Pz1WFfJ8-0PhlyQUh6Uia2ZXAhsgTAswZOy-GKv6OmF-T4IfXwPDZ6R25kVW9Y62ri-wW82_UZs3V40GEe6axyXufDO41i)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
