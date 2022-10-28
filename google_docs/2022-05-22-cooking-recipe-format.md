---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/Tv5mu4nwg-9OkQgasU9-Z1HemHqoOI5Q-phukshH1Ovikjfisw9uGvbGWIoH_hb1edmdMf4eTXXMH7b2FndcPQN8st8eKlYzcdRBBDnypbMLvyG5CmNRxrb9dzLkAqe9gAnWuM0ArN2BjJnPHn-iO_jiI6sbR1Oc5NmdsAHXRhkyH-MTolQkymYc)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/e7S0NLrowpi5X-6HUQrPz1h5Pl2jvKydzuvgFal_cCRQuTxDGPMLQWgechg0LMrjUxKcGCZujzuRSiI27MG_mi-WyjUjR1X6eCI_mOIkM0WgakN6VEE9_N5b4vX0Wgw_MJBe_i-tKq1l_xHnntWzJJ6CQj2xD0rOA5NjxSs4ibqrOVouNjF8XKR-)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
