---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/Egqc2hcdCGD5GdsvH5JQvWSDRMkku4rm3Bd_93wMquB8_WG1Lp6fh8PGZdzOD27cRMgmo-8-4BcpNCkpO40QPk_n8N8m20ntzPJ784OTzO-p7O87iIq-tzcjIk3BK9YHhPiVmwEjaNfzJjpsx-slmA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/ncIjzF5QDPC_9b_UAPCrQmdntC7ANit8hfkoVjFlqsBn9jUGW3Ji7rsHduj8WBs67SeS7twxz-ywvYejBF6ffKIhhSGvbU1Np-BpVLuowaD15JdF2lU39o2CFTCv67q1b9u9wY84YdhHzGRRReFJ5Q)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
