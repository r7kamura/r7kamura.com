---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/gbuhlBb_0N-CT7tQP8sEGDVKyGBl7YXYJtBC17clL93CT3hICTXc2CTB3EHyjdMLCURYWnCFrhEeJIcjO8mPHiObpZA6r6_PE9d-4VAy6_VXfcRQKlDThCKUXZNmmtE9i1TCXk2CNnL0uw01GCF9txF1sMKYGUy0AR00vHINj1FI9qoh1GgEgOWTsLN9)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/lH_9Zn3Ec9c0wINs-Q-s7muEfP2nGrkktzH3FhUqNIJJ3ERxk5Ch0LqZnUFVjO7E1XyLgCg1a_MebZOE2zTyTPdlfmAA8G1kzXQbL5mGfy4Je_cQC5OExsuukU03HkXpxlsIXSPGGbaBoDmNLBMeAx-URcj97uBGxnY-kM1CgSZoMV29HY9TPcn9WT_H)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
