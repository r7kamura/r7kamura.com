---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/wRhkKAjjPsMZt7GYCC6_AZCydmglQV-OdyKvl26A4QVh-sCoOBIpGTHsFY0oaJ0ge4-HipAgoK9GD7gvVOnCEi8HwJHaXma-cLJ5q81fY6v-9CyFUm0m-8q7UWE5UJbjl5fPTU3qAVQV_RllKDwl5tNvFqc3M-O-ln0PmuL-S_s5OIDnKrQlMuEJwRaQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/UZOxaWYbnJglDEbIEz4SgH9mA2c7eDQ8_9q94Nalf5wgOxAr7qBC2xIUSpzhy2-TFJ_ZeRh2gQM7dzFNuj0fNHf-Empc5zkdIRi7kGQ2h2soB45vqCfh5zf2LbBipZP35FyKPk3Dj8xBSg8_3b1OY4Huvp5RK_3Tp8CY070ImLkq-h9ofZ8UfcrHp8Wc)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
