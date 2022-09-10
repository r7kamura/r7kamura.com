---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/0my3ShEzGbC8LUH9cmxx9TbEiCc-iP2F5hwoKUtArMdtHb1CJ-UGFYiMM8YL9fHRBatQOw2Da_cm1ZPR2kC4T38eeA5CBJlEy7xdHbuqU6e-MFzy0Wq_RJMghny97nICCKyolZoNRhBSrd6rJiLACujSE4T_Ot4XGOa3AH5KK1Mr6irKz3dkrD2E)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/giP83vhyRMF6vpbh0hl7ks2dycBpP6raDbRElTzMxf9lb9V-Jvx_mOikxLOy597B4AJvr8l14dl0p0WM-2hhbDR-NAXZRiPlKunkoBh-a4fmQ6Ns5oVI7gc6vEEBl2xcQfoMCNsGdTRJm6iUHed4dz7PtZSyn0C0yBAey0BoU_n30ERB2CuNjU1Y)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
