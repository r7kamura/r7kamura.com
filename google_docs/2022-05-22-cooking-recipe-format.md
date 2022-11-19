---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/8ie4O7gwwj2WkKFtJEEg-4ZdjdlySK7EplNAnkHKaVutIu_n_P0D285ARpvOXU_yTNKh7NUGLsmdQMJx2SF7sdIDZDzvg_ss2Rw6liRfZdCerzt0BOnr0g_751mBxaOAzGz2G6docbQRpgrVXXphNGBWhWKh_cTth7VwU3n0deMvTc0SJh3oZnKkjoFS)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/HQlQyo4hG5jFUN8gYwGkISMCJaSznJmHcNxFHoyIlnAGUC1tgJxrf1hAV4_9gwmEmSLCXfLrkVS2kiRMTodggmSTwBUJMkmQsFaxD-hlVenSw07uLzdCv9Iu9a7UfZC-mN8hGpaK2C5qa27yp09T3h0bumgSZ-0FYhInQ53y7EujYZgcIm3oyAXjThNY)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
