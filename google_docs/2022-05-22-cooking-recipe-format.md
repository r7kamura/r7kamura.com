---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/mXAwZUflTbio8HHS5IcoAGa5llOVvV3lkVXYjIs6cqOFuNMKw0OS-5iinohYRw9lCe3aUXV99jdUVqibE2IOKPSZe_K_jKVAPTnr0zEtOxHVBmMYlZhg78dhQng0jWJfTltsjXCakP4Vqn544rSFPM0O0uWQXh78S0Cmt-3CdbVX-9d-hPKE6NRO7fAt)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/hDqMx0CZ-amcRFVSHQYQ6kU_iaRYs5MpitV4bxpJD80cjX1iEsa33tWDKxU5pPEwGB04j1oz5-_TYq449uGdP0bEJNXmtXGKW46h3vmHwQCOG889xH_5EZiWWm4zSoUrlwMwc37yGOMYGCXIOpdcsMkODcF_NfC9YTyle5fql0Q3jMLiVjjOQAApT9nU)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
