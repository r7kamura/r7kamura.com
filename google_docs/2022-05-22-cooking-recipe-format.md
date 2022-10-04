---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/g9Z1nlDhdMfSozka8xOcAhIPl42TRaZ4q8bkvT688k1QJRpXhV7SQAlZfu0mcj3OYOpch-e6tSDtgawE16JGGoP87_rGjtm7ZogIy0HV1lDQbZX_ckZDzb-vgjAiqOqmoBGPzUDC4pTX1Uvp_luD-25kL-DjyKI-pC0L4ro4B9M3whuE69XAEK7j)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/C-5yN5H21B68T6-ARMk8Qwjt8ezlNHIZd8LSdc2kSaNtHE1Y10vNWJe_araP5MkcSp-LaiqaRr2UKidOgM13xlgphZj7bf4gXFhs0DIWH2nrciyBx_Or34hFW6gU6JJxB9oAfQMGWj8hYbcm6niRPd3prvyBSn_vLxH8BuR6Hw65OtlWr7tjkZUb)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
