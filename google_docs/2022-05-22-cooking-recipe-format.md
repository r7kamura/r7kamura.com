---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/3J76LeegTI3FavKKJcyLmtpU7re-GRN07awvEjd_HFsAck0MgnCv6pcnGmGk51mVBp_vxZIz3SJ00UdYUNx2zYTOgNmPQg1BdymmuUbpauU6gOFKZmV9LOczXj-mNb6Z3WjisY36t0h7RAa4se-FCk6LyezfzPiI9htZLqlk8fTdiH-UjbwKd0f4)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/XIzlH30uMqD2oq4LPJFw_wYqPfe0wgp0Mg6ZUJTk8md2eTd-ybt-b_LaP1Y75mp8mugxGhfOPWecP9TtD7B89pZHVHtOWcxbGeEsEkCoON7O1a1yWe4hYOU48mjX5rJRdBKo68flCtRFTI5GtdP9njImXujhRc0oHYR5zGul0BqEzo3hJ0o6D-yx)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
