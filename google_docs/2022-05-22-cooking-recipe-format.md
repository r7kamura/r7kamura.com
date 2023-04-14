---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/OlOpvsb5s4KFIfwtmzFOfUA7bSpGk_4KBywBRpt-dX0p6THB7RTe-0w8H9r6K5grDD7UhOiQVSKgdElwynmMWX8MI2T30_LUQFpqsR4yvk00seKgk8R0DEoyScAmUTy7vkghwu_Xo2XwFyscPJ_WwQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/9YguYR9gKSh2jZ-uvM9rbb0LpCEDB0ByJxSlzvM8xsEOnVdZb_1k76r7CLbWfEZWDRq-e60zErQORJpzuNSdJ9_C5fyULVy68pVI-EsYry6MxrT0qsEnozm0vtEPlAa6Kw0ZROB6d4oFCUp-VrNLew)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
