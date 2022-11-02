---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/bONwz-6q_ShLKW9Hf1hl1Kln-42hUwSgzLK5VVBZsyFvDg54eVUaTfSJyGroh1J0CBep0N3YCpZJ8401bCD4iuq4DyYblrnitu-hX1ENLYbkUK-KLsoyLhDH660WpQwSrWE3rqtk35MyiIgreAOQ91CynCfqZLLOAlfJeqkFjlLHYNg73SBL-TYpiilZ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/27lVAkrID_ie9r9WuuD5sVJlR7schLuOjuEwMq7NxSe71Sh9y7EWyTK8YytqtIovwdcTUbn7f1nKg3Wp7zIPTYZB-cDVXZbyiRE4RO271NG2IQW5yaOgNRpDvlzIghOHMFlyeIDI1pQMdMFdydTe2GuyBv9byNhPXa6g11WFWGQjAcSJA3Z9QjyY1N5B)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
