---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/-qQj-6ar_X_o8dS6UGF07hcuG4cE57ST3nMvyYA4pulXG3sRbEm8Ys58-l02wIS9ZFCYVXOWTRCZ29tfISG8_9H5Bn4fwMnDO7Pn31jgX9bAK9CohgqKiNhUywAstRUxfOZZstVg8xJ6oTGbILrh9w)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/VIP7COQSaxxJJrVpH6-absf_h5qtdi-iox0c8JytfbGKOh0477E6nftoCoiG16nTPyLX1SN7Bw17MUghsx5Y1lXy4Ji_b6wvdk5Q-OptJOSEOJMU3bW-JVYy7wMy-oTeL1tgjEgXzvcdUn_Qevp9Aw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
