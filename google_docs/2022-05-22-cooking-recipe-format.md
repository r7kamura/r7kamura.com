---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/JoqlhVLfoM9kFpEr0MeiYKdpKoQEjKM6IbQLrfzU00_3kTqXvLGFjgAgeXxvoXT5Z3CcD-Zo9nxRqZ3xrNv7Z5IgG7T6enBysOV8IfvT5qfvli6PDEMS51Z4n1-Fj6Euop9IRUqRXofnM_u0lREika6wnb1-WRy8aT-6BNIcBiK1RX9ShAioxbZQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/B4tB-1LuHAlcvRl_W5JzJxYLtTJaOnFIpgwANLM6SPFcm9hZwmIAEjJfg1xMusC1Z8klncmo87LUzbaNWhWmrIp2ML7bE7KCv9esxi9Fm_mBKmxou3KfNULsGnso9CjVFXz7SQFjA0vQq_WwMLsCIOGqlGOKXEFkrXOBaamS7HqUKw7X7LuAMKIg)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
