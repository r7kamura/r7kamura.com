---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh6.googleusercontent.com/JzJTbC0BRNX4HA2zsYq31EnKWV7UrWrG3A7D1zFAqk6ubR_KNza_z7d8WA-MMSih_6xwOIe-3Y78wvegktBV1AQnOPcvgJQhwI8YeQgS5UyDnFKNmD1895Cc0MT_5pNCIkSsZr87_pS9ufW4wKONJi-IoohNIPvGivuT7E6aSft7F_YgvcXsWt5sP632)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh5.googleusercontent.com/g9jAH94QvgKZS9lii2LW0kCBQ1gcqRCoY9nY7pV90nQk7llZdo-MZr5o8emO0KKWn3WAQ4E6ATsBvsLx7U14XbWwe1NnXJaEkLUjHwIE2OkaG11bBu23Qw3eqJ4aYq441pAuarh10ulNaedayVUYubuXS_h_UfixWSFamlk9EzZrMiYiwDum2v-ByvD-)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
