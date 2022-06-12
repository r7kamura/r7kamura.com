---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/pdYFn4aZxuX5TabIUtkOnxV769DEkfJMd9Z-OksnFeZtn3LZTns8CNCzlRlj629zNtb7f8zT5G3OmiQm0v2K00r-fM0bFZ-tB98Ct6M3AjhdAAg1nytuHScQlH1Yx6DpzUZnRAsLu_o3iP4MKg)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/cOrfG-93aWfvx7oGB1b4lQOUGKWSmsbFAUYIrWGmLNWmk1lr8HShabguUwgygYb4-7lh5tXYKjOmu-VWda8a5JbyxPZL69tLgm4bZOKzkT83tkuYJLtS3KPQesLyhrQk2futHrMv4cZ2_hZ3-Q)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
