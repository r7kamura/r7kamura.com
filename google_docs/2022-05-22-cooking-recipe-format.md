---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/EVW4fvpRMfdwQMf7lPzhx4pi4ubv0u7tUnybsxAKtW4F1ckFAUbQU9fsaDLVKyNBn1raFmObptMmCOEQEtB63B5CgeRz4RsxzrHLoytwr_UmezfYi7tV7dAlVf7WOcOqergMm3yrFtSCOXzoSfo5jdGUYryZMCKLEXXeStNyfd_pYEuMGfrtCe1W)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/eJnvD8vII-F9z2Sq7tLZiGF6kaL1WqxdsuWQSehrPcH200Ke-Tl9kCaRE__yTcqfk8PRKwqpvwM5gVBgzxvkzeceFUyeZQKwNFdNifFIDqiJSGaCUeFxuEqFXK58p1xnsofuIPT3n-X7ogRXgzleUWr00NbeX3r2aI4G_zXBd8FnbuPHUjLbR-IG)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
