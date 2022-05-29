---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/b2W2GgBzq5aSLkpFrJNUcGmqZcgEmK1yr6i2gs3p6JJqW6diaRGo06m2L3HlylnDSYfMDMBIJrI9bXjXJn9igK_seWkoWy04LxayIJaos7Aut2khnQHXNDFN8axg8gZNuuPq4hBg2rnUwxs0mQ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/5TSrgRwpYX8Ny503JV9T4dn1Jp1_B2X6X7UC-xiDCXcSD9R9zF5ct44flbIMzG5Z4neB0NfZDBkHJJOIEX3EYs14grfI0X_5WV2YJfgyJh7ZKobDcNPHAayS6tchDkQnHVbMqdZXbavAG3r5xw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
