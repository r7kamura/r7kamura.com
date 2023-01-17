---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/g8u9pspkO1OgY3dYDC7048lWo5SnM3wqhjlvXBrySrwEFZa_Q4DVJws2V5rRGRs84CVrGgFtyUN7lmYSRBDm89DiDaANpIgRZUw_zgTc4obWUuEnZolVxmr8S1MzfREDhq-D6Vs2C4Fp9HusTu3jUbOALpa0aadHkCmTwFlGJuFJODYQ_bR6m9Mb54lt)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/55TZnUKq_jf5-0ogDrbWpIf8AIQUAACuHEQgSrynNS6h3LfhyW38GYIrT9PC1IdQMUlaYii2TzSZpFSyt_nDKmHy0_Qlj6o5cwV1qJPSm2uCAmE-nm7C1hN9yRabVX3GagDolpcGhMGMvvUkRAcH0BVHNBhif2xaqSdDaZQR5_0jfrorlgjHGh-UjYBa)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
