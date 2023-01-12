---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/uirt1REnPC_gcDGvVQXzcv4OSmL5ZDuEdJ-wAS69wNfj-BUCL9CPiudUEDZ2Oo9rqPdPAaFrx7bwHKoUDpE87Q6qgFWBSQtuv6zQcQqiLBS8jk1Ib2Bpxdr-2xrXHbDzn_ltBNsi5fwle4r6o0mCUeKLZvNyKFbJfkolcOx_ZshtQZmJSU9pAVYNmVrz)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/9fzuw1j8er9iL9DGu--9YeLV2iJqq7v4FvGgsMegr0363juC1g9QTuWdMpnuwynjTBlrtyWPft5hib_A_ZHbqDBJVHKOr9hGrtgH1S3XlJxAG-tzvo4Clse3OrrvHB9JAXD8bQOgxGbdyd-PJ0F8Lngr90cBNqEbqreeVCsfNKQTD1ohvSk1kHZd7hit)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
