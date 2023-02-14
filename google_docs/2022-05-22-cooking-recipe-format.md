---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/r9oKHxvtxfu9yvP8AAdUfwqeW6jvq61v3O9VxDb8Y6HxSM0ZrCF0AOueBu51msE0WWGBvCkGVpLUkq06-6-NZ-RkoK1Yps-lyH1I9fFmDwdbQ1BJMZsPMY_wl9qHunW2bd2Yae3NOAEeWsqtreaZig)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/gB6_LSSblhAsg0qS9UCF4nJLstAkpwbjndRByLUZv8F5slbk4LNRUKA-9Q0NRXegBJeEu-Gq2RZWrCPGkV-oXmmDAZC7ft0rwdqz7s3_nxoMeLCFR4cuBXyIyva1Jq2ipV8QzXISKBSKJrFB72O_yA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
