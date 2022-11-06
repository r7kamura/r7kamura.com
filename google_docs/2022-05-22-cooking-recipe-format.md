---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/OfiKWp9g5XBmYBv3ekKIX6L8Af70M-lJSp2kCgu5rkK5vpTP6OUUhWIyJYtPRa0oKC9QcxwnRsB7er9AEEObWQfebw1x0JrdT7EHonU3D0jMxFUinQrruFt8eauL258C2hCS58T8nmDi3mjIuuSY_4XEGxeyb23MQ-pPFse4z0j1Ywi16c32xAQQRd8n)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/cQQZkeyt5gOJ5jOGFYxpHrYD9yvClqO4smwnW-Ro4BGxfm-SIZjFmzSj8wqks5Kapc-VRzNYQHL9BohUjagW59PjG9PLCnCgPlBasplXiMotpZmnrwoSfZyv0wIeKnZYqN62lDGcq-Ry-qvkq807ZDHrK2HsH-8yBKYy3Kqe9auHo8rQfNs1QAoFQAxA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
