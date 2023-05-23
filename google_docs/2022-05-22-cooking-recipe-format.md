---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/5mj1HhlnsVX97UPhlKR5_LOWWQv2D81TFDeZ7Zok4s6-UU3AbKaImR4mLq1i7cjYEPCW9ul5KYWL8glx1oZ9n3-hERhXAkVUmFFXQUH_iA4s6PqLJ9EARdCTrcHESPvxxpI_M57fThAA2fpL149GYw)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/RDcZ-k5fgI_HG55RQ8Oqc5YqnDTujxOl9SsOrKGud7sb70PpdMYI5-NDPzd1TBzSDSG0D1jGu1w8OpHEPBE8ZV3pMo6QWjnMJNY7cQ5t_ePoTalVOyLgXmeVG-MmX-Mx2sOxU_zsIdsnNMh8W1lnMA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
