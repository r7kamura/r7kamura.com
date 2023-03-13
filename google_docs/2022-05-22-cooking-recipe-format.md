---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/6Hxcm3JHl7OCpkBNSdhpJiF1APv2kxe8mS3DcTk7skEDp3BrlmTEGYY-nwAKuF80gOm4-3dTFn-0KjI8x_XX5C7AVfO4xk1jbn47PqDOghHzfUr5Erg2t3Yn4CKn_pTI-GULclwiePY3r4HIU_SMLw)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/dANS7wQTnpCHZ6T6fihGYQDIF8kvEG9QvGHiCLlDzhv4eZx1Coph7YO7oa6TYXfthoH_R3odfx0wXmKYRvCHjrJLwVYG6RtiKXUvzjY__xImH-hw8nwb3fx_97AlvBV4OzC1iwL9zFAwkWGvvnV38g)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
