---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/8iABjZidLQ2TZYpkhSFK2JJ07QB5Fwj0UFUijbCtnQi-QdrXsRdSUMe4wscFVpP4V-XtKaRadwdKK5kZw4JIBnh_E5PH4mow-FsbNQuxbHYFT8RDveu-mttgTdmhMKoljjSHP0Zu8bjmbrAcZ61ZjLSXVVTw6OSUCBOLU6xI_-4TKXUE9ZjChzCjfuTF)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/kBjdnO8oUwJevbB2WP8zC3mWTLY0eAgvp2ZtRSjLXK-8i6ezR4kN3-7qa-tp_BZqNm_lTRACwBTK2SYpl4_5M5L9nAipMtXMRdlZ03YhZY1BBQ4iksMbVPc21Z7CojT6BGfi0z2SpX9YpcCbqV7y65ub6p4dkENMJn5AjnSg610Ptn5cf54cXaH5Ut6P)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
