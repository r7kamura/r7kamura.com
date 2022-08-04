---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/YzK4_tdIVhu-QxLFmOlPwAKtMl80blY9c6O5xeEcV1jbh6CwW7LHUHiv7O5T26c6st9M9VD3KgboeGv_a1amDw1-nWeIZGeJVrx_J5MDQoWtA0AHbfvS5ffD3guA3OjfstIfxDSi_TpJBBo5_9KCIA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/4iR6KF9id-WvdVR8VxZU7KSInakoIyK48aOw0cHmDm1b_ODr_XbRLbBMbcZAKDZsSXTcVwVMowBra_FkaMab_pGQrYuNiKJDc8YSvWnUm88c_gYgfX5ajoHwjg7gBCdvF3W2l2faELsiHbFXluKIUA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
