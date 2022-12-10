---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/vjDfHgDMioA8acQxAxtee1_3_hwxnuoa2lYh3t5xNi9k9BMtMHGLcFLynFMZz6V4i5AJhz4fxpGPH7uao-pFAwpSX3UXeCcMkwLrDS7FmmoyIj-tGf2O4gD_eouTxCRFRvcSoexHUYPOB5l9qFJgHlDKb7Mobs8aj0_zhOxJMnuHpcmPIrmsRfQEpDwY)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/M-hrA0AGODANXcPHiDqRA_5Y8Il2cUH7VtmLXxgjmZftpQKmIvNStodZ8Fa-r54QYX0ol0y2ui68ovkWg0sbDf3ixrU8P7Ag77PtKbGtjlGQ1bJqAMsyUJvtzHbvpBbo850f--GfYODJFfs9muXsyR0yKuNBoziT-Qgft98CE_IV1mNxgNmyH0Ho_C3Q)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
