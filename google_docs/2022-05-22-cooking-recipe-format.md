---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/jS1JeoPikYlkp9qP5SObVge3f38Kaw4KRPQ1g6J22jA6a6tP0Iu_tejKsC9pEpFaeWwQGprHnYElLnqSIp4p7jar9TKhv_KJAXUGOhG_LwSJBUXJgOHGSWQoN84x-38RGyoztgBg3W4YzOS0omdP_Uo9-16hSDSNrlZx03_OT972yCUY_F5_nL_ofnHV)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/qc7nly1JC5CpNsXDeywe37O_qAlQpa9rxC9NjOduH5JBqxHNthRmskILpkU3ion1r9WrkctSFoKU5Hdxxbx--QpeyaHNgTiulw3-dWHwhRbhFGz_YMzYmFe3AfhInqaDfg0aiKJ7Kgo4Dq5chfe3tFxLznFeQXZ2GqutlHgRDq6SkqDAbJPKtqY0wfCQ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
