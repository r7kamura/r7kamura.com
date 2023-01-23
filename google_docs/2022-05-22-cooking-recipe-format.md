---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/cLDVJ3GuMBcobX0mRIEkCvlahUmDTQA_SO7gqNS4dc2x0ba2g2Z-WiWQ8duAUko8bHD0OliHeh_i28oFxw0oW9DCupgVz5AyTeN7jbOj9X1pVr3ua2_bPM-FN_938tUA8v0uRgpkaJrOVH0V0qdQNIvkm00L-WFXsfleE1LVToS7rmrioXNW1BdXoyIj)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/CK7Jc5avDCC-L-ZQg_gjpmnsjZGW5k7nCxQVnv6JOQNn4nw-LL0ISXv3I-loNb_Jw_CLqhSwrQwNgNoZayD_reoEzyiGS2nODBlRSW-I32qWlPmAxlkQp50QCNXfI6dGhuvnNb-d3fVy2AFhBgvq1tcPqok-Okf_inuQZTG6t9SXzefCCI1My3fSYc0u)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
