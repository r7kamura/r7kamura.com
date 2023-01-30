---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/cTbc8hKtlvO6b0z_Vcq0beIJTREk11E9NjJwHR2nIBgSIafis0DkubHWhuMcl34uBqQvtpK9au0EOmxl5UlZOC9N4V5E_679SmaMdD20mOZumo383-a_xaT-x6jgP7DWnMGA-1dH0jEX5gTb_aZ_yw)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/Q5C3NQaBxZxWQuOQRrGNjkfEaztFkgvplGAS2bY9GfFfEAKsbr81rGZTeyQL7iTQnwFQhl1KbfjKwYQvcyZmezRnrp1Mr24f0XJcJkx_vg7CNdb6xQ4x_RVKP64kuqA7v3H4pLvofjkG2yxZgBCBqA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
