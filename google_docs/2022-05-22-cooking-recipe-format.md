---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/u86rTRCeVHHpOlkEaEgPrjTnIDARYAir3czvdG2F3M5BbMJrfzXuhfbuuVE9PVUA4PCZRj0rwkQ8BuJsYQ00NAcezwkjJCDZ_HaSJhjHtAkw8W3npmM0BbWM74eRdMVcv04Y3FuskfHRi_S_h5816A)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/LYt1ooLz81ie7NtFb-EdyWn_kYVhO0Pe4_MZVNagLEGlWRK3ySlE_xlwHLmUy_yBZ6qgkhwgnbIwSw_kyWdYe_nXw5p8ukfSbXfBIgzGZ-O5EKE07O3DA8aBwje9siw1ZcHrJsmAk6PMiqr9jTmaCg)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
