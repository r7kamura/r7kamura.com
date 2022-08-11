---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/v9NdWaDB0Yu2PUluh7HslxBADPQzTD8OYy_sumy-GHRbywr6B6GGu-O087uWfDADIM3hmJupEEGO7YmfxBA-Pgyo2iNyd5viln4UKJDpATDo2sBWhMjGcD5vUwJv3d7U8TxWnwIZhacP1QaMXqRM6w)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/AiHvYv-iSBupElYD-yUiwr3b7RQhzG-iEVB8CN2DRjqnIkxoRS-Gh8PEIq0ubqwQMTvzaNA4pDf-Ej36gC3Oy1CAe66YGsNvR7cJvW6ZR-i1XjdYrYsgPe9e971vBw0LV_wklxbU9bCVBA4_Bkuwew)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
