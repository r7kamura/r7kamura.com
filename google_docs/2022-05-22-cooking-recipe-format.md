---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/koTw2Ac1Vg9Y6OLGRqITMmQm3vOam4cf8BK8wK7dSDhWKph5Mq-cIfr0dZdCYBJpKaFRJSpc7fupESrhvFcV9CFm2NM1THSbQ4csd2p3xoU6fyleHbs6cU8LMkv0JFyQpvtq3RAoh78chrzXWCX20RonfVZLjplU8iSRjFWVsnYJ2L1X4J6k2tSP)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/8jzGmLybimENf2PlATyv_8_xNpim9-GwJcJ9alzPKU1IMd0vOjmpGwdfYyBAqf5Gx-Z8FQiBjzahjh7uoc8eOIWvbplem2BsvddEapd-BXsxQBOr3zX1xyzU9BrNTCfKkZ_3ZVu2g_ZJadIIJIc48xEp1IBGmh7jUxdE5wsxW_6LKdNq7XlTGmND)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
