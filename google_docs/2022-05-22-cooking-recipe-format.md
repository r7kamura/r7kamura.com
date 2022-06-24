---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/2GUQmzNxugEe9mg0aYHYoxVCTu3eaVw3A9fV5JD-a4hIVh6j_uuIpQjBOwCqUIdKptjhXuKuE6vbJEP17am4HseB_8FMcXK2f7dFNeTnw2UgszGDC250AKTF_z14VU5fmqyU6WAbchLcT0LboA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/RCifkzL6aLlTEnU1cl_xMaYOSDt49JvDaOHWYrKz7IdKebEcikc8IS6XjjtzKUN2OPutKXh4yglB6O4lgca-3zEAY1G6na4CsadF65GeJJSxmtfaEhRLohvRHPkOBCvb_lCfx8gT0zehfYwwJQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
