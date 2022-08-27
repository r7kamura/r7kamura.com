---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/2WnZyY04Ttg9UOj1jRnacpXSnSknhln20bjH5CEtIqhQLMEbGiuQ3ds6Zn48TI3kPSHLptTEJytqgzGZy54Xq-Tm_XMDek82q5bcy7b7VOr7ArRUGyvVUfSfPiI41sLZeDLXLmz3w_JXUu1CqrEXeH4KidHojI-L82IUsagCzgV1Yw4rp4wFo50f)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/d8WYaSYUokU_gKjWT6gWbth48mqgWtugNXr5S14YYhJ4Rl7uN31kKWtN6pLSqVglqTFXKacLqzn1ypvZRJDllYUYhTRKf9fN9Mxi4DZdOj9cqf1mnHxP04iLMQGGcFryhJ1n_VK6iF5Ea7ZtwdgC0iK3tL1aYzFs-Q7_s6oArfHtZbi4uYGkVgsh)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
