---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/pEuPHDquwPY6VsiyYBEwPNfto22YDzQOUFnRIM9Spdlpp1Nlu5mDTn-GYLLtovs5yuC259DCirHT85eLg6tqTikXGOIhu3_pt-tYGku4PeokUu46eOTF9qfmpag1wsHQjSxALixcMEG4MPOHUMpH-w6DyzeO1Ot1MtNv4RI59za7gZWMVJ1Zd5m9aAnj)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/IzemTY5-RG8wTW3E64mekuT1Zj64x2hMwX_r3d7zjLJIQ8aLLvbLDD3udb1rJRn8mJFohhGVs_Bf6JvFYel06yMJimXKrozPNjGpHzFTIsOgHvDfjI8DDJsDHkm5y7roaUoGWRlZ-IuENb8H9uTrWcfkKoFmDK7sO0dwjpMoj_1IuYWVKA3PwnQZ0UaP)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
