---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/Ul0rL1OtfWL_EUejrT7K3eSU3sshBeev8PmswWxxDHv9uFQe8QLZ8haGyNmhoirtBNEgX0_2Pw3UCOkh8DT0ZWtC3NrscXH_SHVE6dL48ZFNeUAUhrgwGY062_2sGMMEBAQheIB82lv8zxrpnTIMoA)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/YQ9c7k2EHeAN_BtMgctMnNN8kAxAXa187CvdYMjr6YAcys8hIjQshAY3aaG-GJ5T2rEpAk-TtCMX-KEJs7BczxcYuzs1lyBI7cnpFiUWGB4NlKKqFnep49t1RrzNabUKH0jtRbIyfKMX3mo2b14Stw)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
