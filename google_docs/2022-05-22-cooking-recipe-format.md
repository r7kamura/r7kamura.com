---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/G6dF-SU0nGziWPZQPCsF5k0fzGquk6kGc5xGKc3G_pc7Do_FI0bH6KKmNkw7bKuDGFvPNRmr9g2UFLK72JBW2pLGXW8GOm6KlWmH-0J7WgVPJo_C4PoQDhWA9dsTiKq_M37cBpsumrwWcfimjmgkew)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/Oi0urNcs-lE5C6pqRQC2yUIeTtOL_8Ilsza1FeiFAW9s9mnoLPeF2ftxl2ziUWMrh9MfPiDLcrip-kl4VdbimgOoulfcBwtS7wFw-0rr84VdXm_GtLx16NNtqcJaj1Wyr6CzArWoXmvupucwgf9_Yw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
