---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/2P5eeg9i3rFjep_NbRULOY0iFNqx5m96j3KDs_5c7zRCS_t_jJQuNOJPiXmwSgbgZOFtMRKbfpg5CDAAlmu3WC1-BWfAOy2vzKbNN2DJQPgqQgCXzIcw-84q1kI_ZVu3IQH1EADK0wa3wX6JmskS6Q)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/YQfSmhWosBY9KB_aBs1_nH-h865FPCSmlAVjL-g61VGdFdn8FboperQoLYRfnGc4-eq2a83JwlEYGwc5ewPh5rzR2JaMDH12SJP7JvufkNelBifyFqwHP7ObDfU6EtCaIUYvxXkvs6CN9MdLQ4Ka4A)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
