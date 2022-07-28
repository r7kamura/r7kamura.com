---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/aANxY6I4iufrbFd4J0RQQ4_prEyH6ORBI7mVYmKXS4dNDPIEQbg9ankZUZpQXomRY0cwpPDoQKORy6flR6YoEdPcIql1hFvIV3mJxuq7OOi5WMHTwYL3BinhyID2buBWfAc2MycgxmHwF5vXEuVWbA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/D4F9RJM4FmL0zMuV5pfI2DaDkU_tsPa51Z5ySz1krqTtpw1UGvIBjyMSKjDtk4BMe5XR3UzrhaVvTT9sfl5EV4_BVdYqDJMdzq4xlvoeGkrGOw6-rwr_iiGp99XDNZelMdvK1IR1OD9T9jT0pIJluw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
