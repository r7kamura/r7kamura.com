---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/bNF1ikpYyc0YkOztAyasSgjsfJHGv_b6Beua4woKi3kyHH3n4oFRnxipKhmBj51CLxOiXTBJjz5y4KELoGa5NQrPeibJ8-iM8VEsQhj6b_o_14vF1ZctS76awy8jdDbF091Yvk_QDgxVEN_uzXj4o84A4_IHQoFjPXIDN34oxyZz3Khxa7-D0uDJ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/m0pzGVx-LOQv1A3hkNznNKfD6_XIFHRI-xAUdps-JfrmkHbwmIi6H9qCNQ8O5is2kSFTsYPBMit5SzDX2IJgFgdcMwk9ipzX-a94GabEn-QBQbon6UbEWEz7cybUB0MiZicmE8HmIBQ0WxR33JgzcFIzmgIZkC8WaHI4bNUJypWq6EHYN1doFzgP)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
