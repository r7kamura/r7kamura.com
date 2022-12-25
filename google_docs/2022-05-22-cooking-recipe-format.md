---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/iHCCQ93UoFNMif15kAnqKl4fhPtpiyCMqhepqICFe2p1L0EnM3eUQ7cLP2xJov3ZVdlA6QytEdMgkIl2O-N4eZkZm-GdXw63MaRLnoEYHZGHIYzC82iITjnMBs6IEtfIW4TjzdvdWX_CB8ZOpDl7sQQpCmbeN896xxySQh446zoARe0oH-eQbWN9DuQK)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/xhv1HUgdH7BZ8jtW1bzap3OoXVs2jj3vlydokBLQIAMWyRiiLIvw-xLnlSDkAuLFITmOa0pKaRF-Up9s_WuASvEQUEE7-WzF3IuW1SF2L_ot2yIZ1Dc_oGv5vmgUgYPKarK9iAsz-tLeCSq3GGvMsU1UVlE_o-CGxww_Rfj_MZeN9k06TAEZljIpf7PK)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
