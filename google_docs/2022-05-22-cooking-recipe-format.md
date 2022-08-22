---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/5XBA0GZlzlmZlC6jR3j2U2RwadUa_fTR2nl1dxuIRGSwXTQqWxnGZqeFetDswAMCU6mHfngcF-Zuv9jjTikOPdEvIYH5O2mp9EWede5wfmwfd9ZWAiDeRRT6Xl5R3CCSUM2ihVp6uJcw8LxCOo2c8A)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/UIPGjjGhEOtcn0HGfRGpUmsijYz6ZNBcXh0D1C8t1F3sq68ALPKhP92gvDZB3js94IawOLnYX6_k5X19kl-alfMMGga58SzFCmZcWx7gyJMYd9aB4uwg4s_Wc9GuWs6syN2p9exT_YcaLBv-iLwjJQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
