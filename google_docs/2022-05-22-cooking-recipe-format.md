---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/sJfKhd1ODkQYce2N0oWFb1rjs4N7JVQ9mXF7kPz_veovaYkzR_YPSQem9z54-EboEIqfjIAN2GRrFhflP8tPGVZ1No9HUSiPDy3ECKNPK5CvVRsS2PC5rjC3_3Ts2tNsOSMHaG962Vw80QmSgz0N6Qehm2ef_4mqohTomTr1C7kFehz224rLhOTCnbJz)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/oAfcEzw-JDmfguPhZybxENEFFrFWZx0qX_DTPgYGjF4atU_1o0lg-h-BWgFtk6lMbaeX0fZz31kTD_1lgvZgXIFx45zapxmDKJ7Ksoy4TLC3hdRj_KoIq44TPhyCkWv9z11_8TfHGq37b1sBsDusPziOtkDRxcMUhwDpezjzNYEVCjFhtsuRMkZIjybc)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
