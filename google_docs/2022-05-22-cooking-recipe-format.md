---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/LQXJrsfMYXQRKPbqP64stO0p4ut-q4vho2XaB37OD8nbGXZ0WNMajKnXiUcNn7Co5PDt2Hi6cwr-jkFKyM4Rx2WcblRzVRzm9CAJvRIKBwxxfuduSYl4yyfSOqsJ8fn88GfsJ6mVCEaZhG1pziJZTGJiy5VKuMxgE-PwOOecEyewZUuqSHen55NJ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/JBbTBveLG5cf3EOlhNNQxvq7BLvYUg03_cM-5XgAG38Hg90kzmtZIauzDOqPDYfTW57DVn8fxeU_ekW7sNkc_S5IIDyt0tX5ipFO11Dy61NLt2WBlKcXV01wlb1XeA8NVqWvFRkMm5Wa-KOrLFpc-s3ogQUW37kTQgT2ZuKzhWvgdTon8Ii4_C1_)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
