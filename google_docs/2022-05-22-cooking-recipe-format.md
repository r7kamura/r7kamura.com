---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/Ot6lMED1HcxlnvQsqAZ2rqLljtSc1KP3crdghjNpHm4nZtLUHLGqzGkzFuNVJbTQxfMzTYpa_VDCk_Lldit6FYwTRoMhyKLM7d7NcQTR0mWf3BtgauByuk0uycTsXWdq4bEFVPan5W0B2NHNDrKvggl9x7jEd7s5xazE-gFQ8aR3lRoEN9UyGp0j)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/B3pY46YUizbOZ45PWzEYklyPmiMusK40ikdgkhoyLc7Lg6-78V-6a-CfBSxFD8DC-e3OA2AknSE82MoZI9feRywC_3UsrCv5Y9JS5qg0RKKbCyh1xRW8n2ZK6g83Q-JPX-mPvnknE8w1YAtYGfo-eouAeSbCYFT-PYDTJDBrK5B74ZHjPlNRSvYE)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
