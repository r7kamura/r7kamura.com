---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/fj5O91iDP-9iiRSMKZgxlFptvDG7KR6WaK3lYfOE7bV72wFvGf8KK1XZVyTkzEVpovcFQfPoFs7Mb8AYOADy5iKnywDKKQL1zbTyJDOYfKMHiOTgyZTbvwGCv5lBXIdQU6-AK2Ym6vNdvnyDafnZoA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/1KlV727nkLtNQE3Iz13XEd1KqBBnSp7Em1Pp0InnLndY8BO36ZuNXhIDXYmFHMYcrfmHd7uoci-L0AgXqppIrfbXZbEycEvS7J7m6oC4OtDRznIgye2DVTe8kcE9CW-Fgh00jrgKXJpeAzi74wMPOA)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
