---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/YbgE2Vc8lpdQ55Lez50-9mne71F9W14ftriN4NgX8_LRq0w6_oD2HzSisWcr7XyUdMrZ8J0WR0RtVM6eL-49JY-unnmUJiK2N-5jC-ppawzt6Pk-04kyEIWDhlQFMOPXP2aFjMV_TtFGyQvr8ZcyrWWRD60cW3SO4_GNy3K7hN6LzMGB3lnxg8iA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/wXnJ8NRtgHdtKtWIKtfEDdBfJ6uzXf5bxWFUZTNhczatChyR_AA9IVR-7r9EC_stD4H-yrW6-dUp-knKS1R1QcEwSWEcX_TIMX3MKHSr-5N5X6tPn9S48mfoQ2QEBZ7iVxxjsRqYfq5O6lM0haPSq6NqiGplkYt-UnG56ECciKw7QM1S-8ENF5lY)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
