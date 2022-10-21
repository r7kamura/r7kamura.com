---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/vMM4HdgBZt7ra3ufz4gv5U5kIU6eAdxs8nWM43uo5m7hGRU0Mq-iyC-fShSPeZ7ytatMaUNFgvqDFFVNclQ9kbbhEFMS1qwOuDe3W-TZ4CnhxjV5KnQZ80V5ErGLWJnWHNc_c-U4wlXXmwhOhBrpeeKhmc6GsopM_7nE2CysvSyIPFEPUK9K8MbF)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/B-ndGsHSBjdX9Vd_EqgTgxXv5BzInziT_o6ixDyyzbHzelMzJgan1Srz47G5xWodrF8-eXC1VMbpmH-cD_0grNlskmJD56SrI2R9ovH3qhtkQq2mZgTQ43xuVdm8lzPS6yXUwLRatdAusPxe1yMJtoAJHTm8dbDzk-hrEvBI_-oC7zYgWi2uE3nA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
