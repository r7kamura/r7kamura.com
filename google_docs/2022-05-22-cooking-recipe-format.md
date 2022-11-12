---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/gWoT1Fsfpl8-JBubd9l_hIMQBGbuaIZJl4PJabyV00W1bM0bUyLGTWJ7zzyTSvio4_6GZb6EPAUc9vy6LXDH7TNIaQCG-fYYHq0o5sXXRl7U1283_C7e-GrUtiJ0eralTpeF6wfCSpGg9_XS0W2zkVy6lC9BhJrD7ziGFpb0_HwB0mn0Dj9n7hfGId3P)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/JIASCo6aN1Df_qSNvkz2Boz2FQkQlYwA2Q7ygO8BqMe_GNayeTYmMhuDv9J96XJesubY3hysy6x7tEjuvw06venUjoGrUEYINTOS3Qo6Q4dLQuCs6mfGp8cTLRffyySga8IAGN1-Sf-ZhSrO5ZFn1SGELSmSvSytom_ScYpa-CnE9I0DlLc2IGDQPmk5)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
