---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/AvC3C1CiIYVdfsDwvcBUQKDnhPpEo5-m_A5xmszQzJOWN7qDBlzzbNqQC5lTzCI7daxyD7ZgUhJCAtKReGW0uf7PTfcgRLBsFz5kBreo-yRKulXmqj3Vql7ZyFsCMN_cxabUWbguSNJS1Kkz47XpXs2_OCLolQcou5E0I5XBTSNcQ3iXSTE96IRM2pi4)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/6JcMcdI_Gx4-e9Ka2MbCjJguBZN4PDHbhBGk3n19HGCB7pSymtv2R956h8fG1hsJ6Z9G1EluuiANj_-FJ5bitI3y9rpeuzXk28zViW89sH6y3sNpgnkcrPLK10Vzp3Ab2o24tzB92eGdQLUGCgRdPPM5s_upZs--gDeWN0iMSK5yEi8RH17z3b3EaMEP)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
