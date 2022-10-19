---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/o5oMPIZSPnsUbpTREs2dXY-HnPZ6f67yhRNscpIyMgMQWBQZ4UnBKOL9Lrsm8KBbR0sNb9Bkkx_gsRTG6yMed0R4scpbSaY_g6OcX-J_GgducoBhiz1l-whsIkBeXCFuwsAd3at_TmqAAFNdlhVWOXrCk8UPNIlxfn1_65NqTwfC85pyLIInUe_z)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/2i65uVVD8aKiLaKS8mMeTfCqjlt-Bb01h5VCMgvsSbt2B4CQZEfk4nM02poVN18MkjBk9L9YkvnYghUnDI-tZDFbpWDRhMj4LXFCb_jyIDemDNLCTHRML9AZ56yAeD17F-c7nuDpYe4w5_fZOGoBmU6-dY_RWznAHw5EwItFjyF_epjDXYEK1STM)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
