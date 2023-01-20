---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/WDmSlZtoR8Vgi1oILpbH1-_ta_SM4wGjOK6itGzsJerRaoEkQo8fLXzen88xNHQj6KEaDaA0_mJ9h2Q1KRXz-tS-MG-oqmQnewYof3FfHx3qoqwSM75SIAE5goUwEuCbeRiPYlecaTpbZMhe3okS-CxWpXZHRclUjhdBvYDZOsGyMP4_qrPcl8LNraym)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/xDjGZNrB-7942FFFviAHyCPUpaN7Xet_x0nO40qY054wWRBw6JI4dLmeVVMFDiexOBaVXW6H53yP617GGtKoEUhJAcZkhVbDS9ngAGtYH8Ri0cxl4okseTYLvK0BkJRmArG3O7JqeoTa_9OKECLnysCkBrvz81DlPWmdKX0RZifN_VmTJNcYiWTj5YdZ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
