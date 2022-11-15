---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/Wpaw_qJaK1TyQWsS7kghDtWU2FVKC-LLMLhLNLv_3GytxcwbvSBSE6s_RLIrJ0spQVxdXg7wGFJk8N6CEfQ9KBV5fxH5Y0qdha3-MEVVSOy2MKC40sYnanKhCOxnb4zx6jLtvJV4BSxn5fDXEKzx0SY8L3jP8_2xMyp_fbR8fzbBnj5a2npS5j0myNqu)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/BEEW4V3v_d-q9KxIIQr3fn7mEbGCnRKQy1sJAu_XJWYzlHEg8f6MMOApu1OgAij60MnOWBPI7v2zKHPvtOUOnz3u8vtT11edJqihr8ELnRTkzW1jgy0RIEsgNxJ3FwzghbdNKfkzYsMv2ServdkNeOH0lga6cIk117pmJOlRWLXgsv0xPH0SI_xL1kmp)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
