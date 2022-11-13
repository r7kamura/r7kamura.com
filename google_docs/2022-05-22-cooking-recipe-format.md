---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh4.googleusercontent.com/RiSdilON7Klt9qr49oNI-g-rBwtvb0BFcxm4lvM_SA2ZemWeEuw_Zn24pwZ8FCeJBmHvGatE6IMy3E0WekdwzVnInQdk7yJKQW5EDoM27a-U6_jdOgTlsMaRKDsRYT268lswPoFpf9VU8s3UwtQntJMPDAI1pKeRVnEuaRcQk9lXT6JV7_MEcubaBFkR)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/ySxSPrZyO3bjoyZVc5eH-RppICxcHrU3XR5w2zKrqcLdNRrQ72NfyEauxCkpLy46A0iM0ENJIdGMecnZCR3SiPBjaQ2ZS8VgC5f97IgbSeFbqq55QUy0a3DFQi7aqCxgMlK00kLSuqjbt2oxslg3JZHSYZ6Cm9mJutIw4LbM_mts5jwmXn28TlN1U7if)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
