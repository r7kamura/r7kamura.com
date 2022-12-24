---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/vq-bbjG-jDAPrFfP3hfkd8QEDyq-SKegE6l3vmCvAhI9GrxCSdg0xXw1_EtmUOUOCHS1KX9HHPBhQ7mWBM1703XuBaMrNku1xcPGHUEh5phZ0SD873Jt4KwXhijskvF5l5Udggjc1qLXDrQVk26vVLWjHZpwQJOSx6gWgA8Wd5xD_nWy0qlanRIqZjEe)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh3.googleusercontent.com/NGepe3uuqIC46Jmt2fQGVDLQ5NjYtqALbPqvjJ1tP5a4_eKHQdC7I3g2tbIR6GsK_F2GO14EqydfXWnrf-tAQCT8HjcFd9ZL_48KewX5zKtdkMnZi2tEQGh11XS2IbtAI6xRynQa1_LT3JETeFcFaoAPiQiyNAmoiTiG_UTpCYShmBgTZUxWvscmbtp_)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
