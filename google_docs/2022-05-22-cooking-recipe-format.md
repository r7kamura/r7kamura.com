---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/eXzw9SuB-lPyt4EcLkZD_VCMSO2EIMwRRcznFApMHU5lhx3W5VD7wDRfd6UB-iHCBxz7WAEyNKIIpyaBoxybSDr5Odu-myspoyv9_OOCTbt7SiUMaxW_neEk_MSVu2DEzgto45YXmQjeS2lRTb03f72xpQ8h-RDE0b3lwiDNKBOY6iquga5xEtBpIM-x)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/gMtN_WUmg2jguC-J_zKnLHe_wuYApe3qIyKsyso7graPmkSRWYUncyRCYgnK9y5wYxpcqchM5oFD7zAPLR0kwaq1A9t6sUv0gLgMRp8l2eZeCUNLvJMmCFSc8Wz3_m-BeG8qHaCkaCSpqwG1FrmvT3c96j5rl25dFBfDKpO2GSeCN1Y6mFyOvDoIdM4C)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
