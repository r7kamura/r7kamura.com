---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/qqUHhVPH2zNEuXadXi2PjowJRvpcivOY-HwH1duAr-ip0C1njn8aHV24S-_GHkHUVGbf4-SWQ41UWe_4vE9-_P-PNAlX9hQNFR5fdKQGuLG4ILJoBDZ4-RMJ73QzyxOuR0Vl0XY_p5u0rnBjccH5yOaaTx-Dq1a0mojzpiox8U919rFyvuGS4bEZ)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/rogADHZnb8oQptkgBtkQAdl3cqGSGXG5AWLYtaMy8Qjzcz6Y4P7Jn_LhvSRHdDf61vei7SmKMVHsKBiviEP2p-VCCRnekev5qyCtV3JIZ0OAlqFXqQ-PocmJjW1-6UF5q0NA0nynyTV8TSr_FNFhwZCK5kyY7oIk9kcrHeJzPf0jjXzkgMzrN0KR)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
