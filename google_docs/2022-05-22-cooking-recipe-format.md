---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/Y8z0x2XbAfslxc5BdxbG8DglM8kboAu_lpJaG-CPw7f6l4xNfdCViWSlHYfgKyuT9fIWWvIjzlTpQLDNi4TD0mgL_HoAbmD98zD6hgSp8mvskmCsiGNuAtnIVBjt-tGZdL6zWa4mriX9I10Qr5FYORGHIO80DMfObLLJ0zFRq18uf3P9MZxiUiBb)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/miJIHKvJOprfcsUYiqnqiZLQ7O5NrXSqOyfH-1I-FWjuT07NeoiUh7P7E5nmns8Q7-m-EbsXKkRIxdVaZ8jvDZz6jZkwFjQ0p-dF4HnIOmjbGBC0wuGyHxamRRpKbnZ7wfxNXaskmkGogaE3ijBVsWpXjTn3TZhcJzLJoFtQCwyRgkhGjNAj-jSy)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
