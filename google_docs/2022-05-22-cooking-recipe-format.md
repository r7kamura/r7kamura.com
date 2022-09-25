---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/1Dpq5EqnV7n0K1OXHAGq_0Z7OwdOkmPKz3bfcqKZqaoB2U0yGbvSA8RVJafErCgWgJ-yaMUwaWW80dMlkL6x5mVHbPiqFpt2ySlCqcmMwjNOCe5i83rOg1KgHHkkQ8Z48_AH-RHjy-0WYB7YP42EoQJzbdlQuUFKvT04Am5DF791eaqldRPi4nK2)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/uU0PDvgjze58lIwlQX-JquQsENDryhoL0bulir8TxujZOTaEbeh6lubLRx_ZOD0tJbE3Gx1QftpoI0yQRE9Qj_8Bf5rl5RnE_K1x5bcCH_OGAGum9uUgpVsPPSSu_IzyUHMAQ0JmuZJwtwFc9DkNlflNIU8iY9oE2jKOfn2sdkF_a9ZcDxLxUNgO)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
