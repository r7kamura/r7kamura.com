---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/FfeYLOuZQujkF3dhSemoWwLJ2DhxsONuw0qc_cHhK4p-GwrIHNe1VEVhOnS_GxPhR2C3bZmbyHM35W4EvkUGnscxrTzJO9pWYFn7JrjJoVQ2vESf3LO2O4V4NP3LZ4OLR61Dx326PmxvxCPn6U2t9Za65nQhLH38a16aQkRlCNrRu49WINW9DhDnRgo5)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/MpshvqrxSPJ3r73QQN6F4xqXQWykuQJ1jWHhwFVpS6HayUT-pW8CZuEen26uGL2jknvI7fxn_A3EHuL4x_XmPSZYWGvQ9PkXT285MUPDJCZmrwdQMhx3Rk_Xh391K2PNTvrFCbEycQmiFj5_v_kdgrVhlX_YsPlq2qT1R_qJam7txAp5O-Z-yUjZ1Awv)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
