---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/8LZHAiCQ7-wv1mbmvs44Ac9_8fN5W65lz7R6c-zaiBR30XJA_ayIxkzayf6Wf1G7HId5OATQE7A73OLBo0LL-9VZh-DVKx47kU-fLsWhbNeGcRI0cs-legLVVgBYEizReDGiBH3OtUBR8oNyew)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/Z0tDIt87GJ-5NFhvbAN1jJ6b3bZoZCL6uRbpw4f0yiDowRJgudQLwphHzikO6nycVV0ycjB8Mls3O7YZ-iNpi9JsNt7MThTFstghbhVtFYJmybVpXh4Y-VqlZQFobSpD56V_sUCHqrWBBcbQjg)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
