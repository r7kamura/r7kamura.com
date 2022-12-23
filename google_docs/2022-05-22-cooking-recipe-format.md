---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/z2rGDwASz4ZIshV1u2Ijg2xv3L6lOJcfhaJz3hm04TqOY-Mlv_JLWT501PPBKpmc_dArKKYabdUyBvezfRRqEmJM9OidrZ2m6WL3DKXWHnIdHUoJE6WpwxKzKVLHno81FqtA_5vsVYgugRNYgw_gEp1vSQllp1Ug4RycxaEEDEc94eVFCHyN8Jwl9H_0)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/-VNbxwCAHV9VKPb9j5Trcmxu3a1rCAZ1ADpeLUVl0hYtRp4Qyl2lEy20629qsx1DIQLVRevDWAHReuZ-zKK8GiklnYY_QF3EwQqS-7eBPWZ9ls37Ofu3xb2d5ajnJYUcndyK0n7MMRu0MQEAoamA2B13wOOjxe90DmecJZk7CX3s-a0fgqDq42_gf51g)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
