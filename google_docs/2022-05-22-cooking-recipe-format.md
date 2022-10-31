---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/-cXF-fYpXbsnc93_0IFFskRGA7QMutMPGEovTZiz9lKuKP_lvrKzPpLGrd0uXUyY_IsnRed1OHBryKykEFBsTkKm7CztfiSsQQnr2wohqwfbubUakTB-ShKALs2d0RcNJ6qKf9mfzIcumNYUSQWw3bUkQ8dEylkBK31-6vrvFjYC9jtalZ64RP54)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/1TGY8ugaqyV47BdkTI8lNmJLKn68NGEk1fIuK20oIcwAW4X76H3E9Uol0NK19SeUMS6xDK4pRuEwBHU9eebfRv2w67Ve-mzbrCcI_QGyS9YTTAV7yBN0WsPDgozNp9NxPLxd_3YPl6WdHP06w3mn_KSTu7VJjocaanI3YAH3Z4icFmIGT5tbR9Cf)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
