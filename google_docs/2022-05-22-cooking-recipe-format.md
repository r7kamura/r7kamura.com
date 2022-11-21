---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/v6mGNcnwErC3O3tMWQ4WnJCcGeuKYTFjRbYReuKjm2oL16rE7MKaWUndgKVJqX95pUoYb4B_VDFuGzdwEErJYZiSchBHmMUlczOkLOkCIkgvVwhMlMbQXBfDwLUdurQkCD3zBdNE_1rw1DVVeqZO5_aeAopF_uA9OajN6Z91likPVXhjtQIFcka5im-m)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/o9K9RBha6Yo8Tzo3YqlE0fNgnY2j3vl3qO0x4Hq-2ZNOhK9ZSbpwoa3uYYpOPA719XrUnDNQ162ooRZZPTu4CuM8tr5o0v2PoI7t-YrnmnTjQ_ROCCgSyB4Mo9SsbilN_dx64pt_JgwJkt2i73U5I01mzbze7drENlQv-UPG3omtzySu46WMaqtfveYN)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
