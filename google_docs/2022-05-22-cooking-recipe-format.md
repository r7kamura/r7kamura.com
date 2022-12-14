---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/OLn8TygniHHoNW75WEHMoDUtRp0K0EJanVQ4bKr-FedURkXWHOXIwRL65Zh480YXA0Y3ap0B0Cn8y8ryK3UdSni6FHSFeW3iAdrjGkGdqhxLqqbM82ImIUMYj4jgPkyVABveBEbkML233IEFmTeBnsv-dMB_Dc5gCigI7sA33LNylBVXw6SaKfGIyUvy)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/FO7yh0_TLQOvGbfu1ov7aSbAQPX0IKN97fjezLnWbN3DnR5jM7bJG1w2qXM4fYlvHQPRyYg7dEh_VP_WbpWIQrakwNy-jqkGlLcbB-MOrtv1toUs0FNM_Q2getn4Wg8QoivC-XXJraPHNq2pK5Ozg0U1AoPHCAluIQ4GgWJIrhurE700fmbedN04a0Os)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
