---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/J3TgbEvHi3IegkLYiGJPkd76FNtDDJidoPwsBrYEk2KnDUGnneHX5tJWvg-Utl0zNWRLyJAK9nA2-PL8lA0C5xpycZ91GZayegKCfx8TMK8V0U2Ve_ku-thbz7K1xkG6rr8GBWWRVdtwvCMrzg)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/HJT4XlG16WaP6tL1knE9tn1XfqhrNwDaWKDZpiIQ75I-gve1MP2ORh37L5oRo7LUt9E5Q9xxdF5FsUxX2vwV4Tm0LVGQz_JhPuwZ_s7GYEJ-CFZARuNJ6Wo0P3ynGevebHHouwSoJaWuQ5qhIQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
