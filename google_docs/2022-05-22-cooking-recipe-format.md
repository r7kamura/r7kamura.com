---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/2rGX6EmmxKZvJJiMu5lRodct6bs00f0P1B4kCyr76wQmbC1db2K_BKqIICHRdhuT8erNJ1GfIZiZwRimCHoprP2TAr-rJwvsKWiod0VI479EM-jPqDmnb70l6sUDG4p0efadakNs3QoKwcoy_fvNHhd_Scv3GZB3TwoKMVket9vYPQm6N2S-yyog)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/ojZzJrHg-9wMmRzQPQJf3hTy5FIYTDwCsxWIz412B27Zx41Y50Y13oikQ_JOupJev8QSu-cp4rUdGFtsLcqdPvMb898rTe8VCAarsEkPG6LAVC0SyBF0BexchYT0En6CT1TqzhDs0zzB9Fdan_VK9_qFrNajEeUJWjcgekJ3FWqElpL7vVylmF8u)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
