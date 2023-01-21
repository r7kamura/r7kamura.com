---
title: 'レシピ記述形式メモ #2'
---
料理のレシピの記述形式について、[前回](https://r7kamura.com/articles/2022-05-13-mermaid-recipe-memo)の続き。

無名の中間ノード、サブグラフ
--------------

無名の中間ノードを用意するという案が出た。こうすると、混ぜ合わせる工程と、その後の加熱などの工程とを独立して記述できる。また、明確に「混ぜる」という工程を強調することもできる。

サブグラフ（黄色い背景色の部分）を用意するという案も出た。見た目上のノードが散らばるのを防げ、視覚的な誘導もしやすい。

![](https://lh3.googleusercontent.com/v0rQVprh9ADBpdYb7VZgcdcmWSi7TxakVdyfGK5NCj1Q3TbX9wpL_-fFJAruh5swwGh8HMP5f5GCC6aC7b3MQqTBSIrfIKPEX4On1Mp4YOeOXqAdbTiBBKLySTCIzpFoQ6LwWK0axrda3HuHIVQxWpkJLbvzcVPff4Qlrsuxrvcjop9tAkfT4sp40ejs)

複雑な例
----

調理後の料理を、更に別のレシピの材料として利用する例。

![](https://lh6.googleusercontent.com/4edPKMODiH-S8wX4BI8uNc6fkr9jNnsPOZ_HBBUc6jvZrfao5zH7LbXIStLV0Hh-z_M3fFOC-oSB-knImC6N8TcPdjyYKxli3uXhN4jiqLmto7dqNf8bfjhq2__4N8__Xka0QbqvnW9gh6YpL_v3xdGYRh5Kzlw9p2d4BuKZdhbA-8foqgsobrmahbQI)

課題: 代用品の提案
----------

この材料はこの材料でも代用可能である、というヒント的な情報を含めたいと思うことが多い。例えば、お茶漬けには熱湯ではなくほうじ茶や緑茶のパターンもあるとか、オリゴ糖は蜂蜜や砂糖でも良いとか。
