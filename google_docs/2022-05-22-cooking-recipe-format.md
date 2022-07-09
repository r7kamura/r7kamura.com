---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/mCFGsQHs7k1Kw4AkorBcxDiqiKbUihGNDeE83OkgEhXupYpNn7jY85Tj56eBF98pUuJjRr2ibTmXGAVXY3rrl8HjDXvQ3gZfNscGasHd9CWpLVDZ9Sg29LLU-C64w1MHofZTKaCxqp9nVqu6S4Ow8g)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/JSd5JPSuSwTcd2flEvqlLQ4_RkitnzZhS-xwKwY6_RMY5dIeGc9YhmjbVSre5GQLC6QOTD6-MfzG1p-e3YZSiceRP97cOmqpA6MUy335z1jg1aEeqWKDP3uEwWziOdDhT8OO0cgQ37eoBOwdZpLbsg)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
