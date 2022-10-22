---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/I9cuJSde-0jCZ2JuvrjmpzUhKOwEKpbiwAWKl--hTQd-cfbwRg45HeO2G9aNbqPwgZ3m3Z0nmkgTwIbtVrInpr9dMKMs_m47PS5ujuMNv2pzxOnNgc_-GCHxWx0WUMHhuLWQKFmKs42K4f9stVSKKawntwPFnAhB3H01k37WspeklbOuGav5-c1E)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/AMSjK8hPks0NqRGHGjZpGHbzDbvd4l51AVHF1CT27DCsUHlBsZvsHpDkudpGx2WNDB35WJ4_Kpbe04-qKJPepZleyLSW9FfoIsLce0CLgAP8y97zhlXo72zh7E4j0fgSN907Wd6gm4ayO4AXJpFfcjesMah-liq5lrwBcw_5TOI6z8jE8v3-1kGR)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
