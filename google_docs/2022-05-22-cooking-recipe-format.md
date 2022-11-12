---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/x-Y4-cozKbBBaVbosAe-fB7C_geR4TQ4my5mCwrU082AfFeI39_DiDgFIo_Q-gVEESEiJmFbeHG643wlxhLU5TSpkiiAl00uTRmoT6LZz9nWHAC7D3U8_MmrdRWNNmnBymUsl4rkzTz_iN1sw-N9vrdgKNOPremhG6e53bOOaXMiYFMehO8d0VbdLFXN)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/1iGnCpUa7OJd2gSb1CmWYbmespbewEJvBHrI_MnG-79iz-2sJE3twdw8Q06iHXq4b624MN8WOCb7noYW9Gy1E97ATohV5CIc_nqcH1Tu-Yxa05z04s6pu98vHlIQ3oKEhZ9PRjnuPpSXK8EP5tXUTPA5NscDC9rt7RYTJ-tuIUJdwdcGdeeGKPIm03iS)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
