---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/iMPTv69SgGEY-ZSFwJd9snohQJYnx39AxJDe2sh0TlZTL2C-zVAMqowFRPVN74rM-BkK-2PrSuQSJd3fBkMmUPkD1wfWtTjJLS2M1meuzn7uLsSkyWprhi7k-FBh2H1jJsTueCtXF_x7nvUAJeoFf5weFzzZqOL_a2BQypDwjVo3t25pNQuOsStM)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/5XBmLgZL91VxncqiIlb1Rlfr7-qsn56dh6b3CBTyUxr-68a_lq59FHh63deeic8rNNlpYm89EgF5XWbM1ZmwD0LkzYSTciWQWI1-U2531A7D8ex4kFguNBGcVxmA7QHukvq7iXvXIgOjmd-w_ALp1X5hmgpT0Oqnbxs_mn-3V6lG3D37zNXsL8yv)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
