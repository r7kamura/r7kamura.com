---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/s_cR0U1zjBhBkHIRp54GVlepfTiZsaoib8fpvWd-yXwEzn0x-Fzta3wV9yh290EUgseOhLtkkUHq893eyIXTdaQbB0N_ImB7pXw1edfcEcFOqjUTdmlt7zNw_kI1v8hhStnuwhXj2qJp4pFJFXQudQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/8Zaz2CVFhAK5S3lMjcGvFluzNeKuqaZAQjQ1fgscZ1X6nijFun8_mMvQUk4L_CG6W47ANWnO2AFcyBz69zTnkNn8g2eNvmjjZqP_aw-6opZN3x7B96nKaDnkbaVZr3C-Oa1sD8Cs_SRgOlh8wf61uA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
