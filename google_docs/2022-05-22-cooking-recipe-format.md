---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/1U5DHB0MPp_dCpIy1vYQ3k3zo-A2wwGCWjlO4ljfSmrNejddH2A5CcQ3lfdTvfXe3fvM3Os3DzbJUJUyp43ZKvpVV8t12dYJC23uUAMkIav12LrfY0EL2psHGB5IYGemdhXujZBlUhs1ycY9zz4hzJRRThrcG0NcaHcu_jCD6YospILrdjFSo2RjQArx)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/3IjEmYsRT2vnvjwB80dWXmgdFKAW0teNdcPVuFVWEoRhI81yh4XpKrDIcLqah_5plyjW3KSHJolpZ57AGbUsZdBambPE-37xZTsWGvK-X9Ut9Y38BRP0M7Q7eNE9u__vM34Da23jSTbynfcc1bsmnPBn4K4VshpEZO1_Om_7x78hZjhKYr7znc7YOq_D)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
