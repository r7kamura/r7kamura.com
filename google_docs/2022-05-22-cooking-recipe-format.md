---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/kcqSIxPyGErCJFnRUL-dR5FnLvYf2BpCB0_JlCA_T-Kp67EW7CdFgOyQGi49A6GG9kjbgssbtCXev6G1GMLWY0-9Zr7Kxj-kRccXpHLCAJsx8zLi1u0cbjuYLJOJgmzXyOOV7dbAVcomKJWQXJ5TFDeoNZvSW-9erPGwMGa9cu6RRjxavuw5H1ISg7X0)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/k4lCHpl__HvVVbp6jke5ULeF9ooiRQ411U7ea-Y0NHg8kHIQuNan1H7KqZxkmNOs-cDOhM5Dlah9tcD7gViNx1pdclviv7swS_br70Dzx1GYqpw1_wCesk1GJ4iYxteldQybsyGkGD7bTN9MS0XDlX7RWtGKrlf6Eh8VNqCH-zwswtqCpGFWM4PFTyr3)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
