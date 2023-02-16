---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/G_fhdA81ONb6GZ5z7sio1n1W80Q32rT6BmhySmsiGEaic980V2okkpBs9NAQYuBbVEbcKN-U62XM8HZCwM-nuIMn8ixfDYA9VgNGcGLYTjTQ4TcwbwHFVNCINyqjsS4gvt0ysSeNG3qvWaoY9sFWLg)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/d-Ffe6iKWJqH9OvvO1TBBcuSBrfC80Xe5jVDQr-C-6puwJGt5mQyqtSMrIzmy5jw6illy1cMoCDeIMU4qRF_A2YUlGfdqLr2MUZg9B_hrvuLKjsa_8b6uR2aLinzJga7hQomebkdEfyXkd3bVaG8mA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
