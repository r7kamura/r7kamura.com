---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/aWvEf0fjX2Hi5vwPmFkMB6u46KwBK2T8beYaOjGJ1I6ze0vmtN-_MJNVga4urOVAtZRrylnmXmrnDQ27T3JhE8EXpqqaxTZ9pSegOhTRQDOHlPF4q5PXrttKi6mxUrIYPSPNQR2hZ9AC3Qq8F5qIgFP6m8tAn0u83h2TKu9MvxvxyR--Rn0pEZM8w5Rl)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/_V4stF3LEIUDfc4khiK1HSywvDj3KjA_VoipRTgB6c_fmyXyktNvjP_871EJaliW48fvPrnDzML60TNyyBytSwnYvs0mtOjlpByRHyqICo2gdHilue3XeGUwAnO9Fl4I6IFR3JTRYleDkA2isaNZsZ8BNtNDLwZZ359yGkxC28DjOrGmHvwzxuMQ0aLc)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
