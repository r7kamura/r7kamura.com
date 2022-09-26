---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/ut1gWpJ_EfTTtkcMWiVfpJ3NRdHd3y5b32ZY2P7_dK-VQuZ82alpZJHkWTiklCJMWwicjJ6Hq6bNm_p9W4EdheC_r-mvjPFo3oFZaJq7JjaMx3U9avouRX8gBFCk-gswV0tKnpPDqEzD10nHLPYP9QLK1jeNa7eQA6fUz5eMyr9Vo-FsJBn42Tkj)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/kZ9OJUHxgu5_jQFwSM-VJ95kk3lmQFkdrWDiwRgy-UfQKtcBqzj32lJmFTzTxZfzv423eMEez7IutGq0gN_x5b1HqnHmkBvstGOupkP5dmnUFvGVr-d18kM4xZCr1OyKMwv4rSmWxQ0baGW4F5732i-5kqRhIA2X2PS6uFV2glhVAPb8ILQ35Qay)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
