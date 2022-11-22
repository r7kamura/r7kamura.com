---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/DtOAtSVKX6biMsbnao-DQ2u0eAekqVgFSkQeV8vC1HrH084A6JTf5z8-fZdOya_gGA5-X_oV2BZGse7kYTRUAw034PDBZcsRpCXaOtpVKbj71h56jRkAiE6xJoT7uBoEcWM7GWM06qJio3tJgYVXiPLV269ybfgfmQ2mxkaUrt_tHHya6ySzmImZ41jV)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/wl_los0LqgQb5ufzP6dpViGRk7sC1dEkgKKv9KerHGFCvtQEhy0soy7l-DU3W7WO_YDfB96tK7CMXwKVPn7qyfxM2xH2sFXYEjP6BazVCL2C9XN8M8NpV87ilGpadJ0kj82IZhkEtjtnwdCyNEfGfAlJGHYVfrGcl9TQbqDrbqIgHnDHVWDFk6FyXBa2)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
