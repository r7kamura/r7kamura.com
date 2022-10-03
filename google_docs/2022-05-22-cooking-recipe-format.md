---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/IDqV9LZgUmyIxtunRWrPmkU2rGCl0ftrJiafacFRmXanuvGR-hHztPtZ4cposiZ5wnTD10sjiBWKX2Rz8dA65JS_msEAYK5_SWaK2a3MSmoCVs3LahHnOa0OEER_hNgRpUr1ChYuETligr6plmpIn2L19ml-zFlhBwIhiSQatnRaS7qO97QF_CUJ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/EnSIq3wp7zhOJaFAqQLQR8WkWoDfsG7ucmvZC4ayPGua-zLVRF-5IAEqIJ9mNLqBQZKE8XrVBU5xZEWCLFsz5ZHYZFsk1q6fu4lXamggnJkArjV_rsrKDGTIfzgcFL5BQ_d5o7tXM6gLkcrhYhHEnT5Edesnbdtr819YbFM7_BA8_E5Tl91rmLoQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
