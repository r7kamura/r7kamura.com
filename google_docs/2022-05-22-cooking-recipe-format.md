---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh5.googleusercontent.com/E1msP4fizVC9XfaAVlHWBSuCAI6Adifnk-pIQT4gUetZHgrPdNmZAjtInrV9eBEtZBzyVvmKRgYhSjG--AieU5vEZCV0O7_ISI-GZ3bibqM5IiKLu0tkAUxnD-hVCfUZZ3NX3Do33ikuwBlcsasT0pmQ2-pobzqet5ptn55eA1rvNDxOsRVnCNQHDpsU)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh4.googleusercontent.com/hWNYF0ifE9n8DYiSWb6p2Eu3UCa6HdwGbLRBnseOu6VMPYcSAALYU7tA9E9fnKy-XCiO2Bv45kyNuh_idN2PX9soSMq-GcqFyHKxL8JNJmRkk0ABiJy8VrPi64NGPMVjLoWPoUpd8p4VFHzaTAdOo8pV8deOgL6EulsbAqVfImharNmGCuoMj3d9i-wJ)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
