---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/7xL1QcZI1U8LqJc9rfa2Uz6RjXf6rVkYPxDCB3zuMR_b5VxbAYaDOiXQ9HHiYbajBOEe09xq3mOWYD8jiOq7dYdc-f94w3nlAcg9MSeWtT3qx6gKp5fw08fnLOTfbnpc5t5P7-s28ceAo9ACrqcmew)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/UfxeJ-qtGUk5C3BO2yNv-dI_g4r2lBzJ3IpurtTyFtUT45eduV2eFPPczued_4eJoOaUzAFoXWMyG86y80xwdlRh-68jva0Pvdcl6d6uPSQhdNb9rgfg376u-peze70OOeEia-68tjr0w90bNJdLmA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
