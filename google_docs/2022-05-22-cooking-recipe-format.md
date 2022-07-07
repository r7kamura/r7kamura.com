---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/kkyEvKTw2ubUaEcK5g8KdQVYPNulyaaeIfpv9gVasps_QCye1O4l_Ccqu5vu6oWhcIhBSi7aEru5_6NqDEMhACueEx3yoCdpUh0-_FVsk8buSGL3QtMR9-42oN0wUp2Hrkzrty-ENTcAf9mvwg)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/QUrSBMy_seXj9Sq3QjUjTLV_sqdxY5p2YFF067Q8LhmfZpGXnHJkhavMymaCwsZ9FZnt_UwFOCLVdpte5vjQhBO7ArMQTGK_I0rmtQiCrfiARRbm5qAGxOHY0bJYGdGEuRA5KEsYN-ztZv91aQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
