---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/dK4EnjNJDqhlvmDPNTDiqm8dAgMBpJz7E0NkmIZrPiefUbx2JFbu-DtB2VETLD0y5YVzqeBv76GvM81Ggxr1_wk3wYhQktFam1GoLwT0RNxQaTNs6Nk77AK-cOPJmnHcrpRaW1uOMBqgvHZOpMOGica0M6Z8703P-JekwkD2D9ZZCLKX2-Q8Ou5b)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/xjfNYZEFUD_egzS9YU8fljkVRmRtYIL7_roW0GLpqs1hnWpkQMzPXuaLyjSwkt8RsGbS8qqhYup_wlLq_RjrInkitX2cScXBf0GiN8BXKmDXbc-9kkfgcqMnG9P1hCVWuOHosWX5oAuLP2YA3oG9g3DwAiOzPgqmEdOHMKFcW5KKyWf0Yo2o54Tt)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
