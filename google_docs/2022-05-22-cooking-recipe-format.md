---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/kTKlHwbUHsyVdDx4ss9uEgMTJ1Keji4TqVpjeGOIC3cMAb6cPdy3ApsCDwuCMGn8Dq-4SyTu16_gm-9SD7qk4Jb6rB1bhKfswh7JDKBR-4_88k03ZfgMe8eWmK9UQCVws9glDypIHTe4cywafA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/SwTNq95aHFCXAigoHZqwOACHkf5_fEcqIsZP1dRp5tOluob4G9XTJgLkNS8RRRM2UfQRW4m_RgVQPiYcMHy0mIjtFLJT2M2LxFpetCL1Qzp_xXnndJZkinFSQI4cXlqrNhGzBsIWP6UakiL6nA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
