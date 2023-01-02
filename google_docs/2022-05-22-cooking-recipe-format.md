---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/V1cHZhGtBZ8OtcDkICZkV_PCjK2MQUqpl849IYTvQ3FCXc-kVJmwIz-pJsklWHH_U616yc_gv_IcyRsTBztUU6K0G3D18j16_B2DEtB62k2kcZ0_lZr6U8Aj0rxJ1O-sWdGCBr7Ptp5eU-wMyQ3Kjl6_QxSFkX5g4Qfa6VSwrSlmeoePLmzd_LlNbUib)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/AvoOy5EU2247PeFEgYA-6O4Msloh6m4PQNXZ8oCU7-4yatbufr53hbBGCJmq0ZffLeEdgaf8RC7xflNfePLcIV-xl06h2MB_yrn-Fd44c9bysxkVf1WPTO0_X2eqnNQ_ve9R0AkdaOx7ohy6kuOkyYPCgFEBTuEx-iYXSYnbYDLru7B7VlyUIZKI9EcG)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
