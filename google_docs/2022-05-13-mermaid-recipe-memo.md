---
title: 'レシピ記述形式メモ #1'
---
料理のレシピの記述形式について。

背景
--

料理のレシピについて、大まかな作業工程は記憶しやすい一方、材料の細かな分量を忘れやすく、また文章を読んでも思い出しにくいという問題を抱えていた。そこで、フローチャートを使い、材料のデータフローに着目しながらレシピを表現してみることにした。

記述方法
----

GitHubでリポジトリをつくり、レシピごとにMarkdownファイルを用意し、[Mermaid](https://mermaid-js.github.io/)記法でフローチャートを記述することにした。[https://github.com/r7kamura/cooking](https://github.com/r7kamura/cooking)というリポジトリで、何件かのレシピを公開している。

記述例: ブロッコリーサラダ
--------------

混ぜるだけのサラダの例。こう見るとものすごく単純に見える。実際、ものすごく単純である。

![](https://lh4.googleusercontent.com/B1dmNDrFEOVIyE0o9Y1BH1cOu53MjFGd8F7a9Rk3vkZ8vWWDYL0ncem9mPswW7Jvze72VieLH6dJj0R2fWO3CzXQd6hjf_IcfUzH8pqGHsEgEJMBPc9Xt_6Dw71ELYSSwkVPwJm8NwSYNL90l3t09WGg5zu9nhhMG5cdBxIkmBBLOWa6zjJEHkDb4MWn)

記述例: チキンチャップ
------------

鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

![](https://lh4.googleusercontent.com/4aBFsj3lcTPmdlq_8DwIOCjlYo6w9romnmTxzvnO78p1WFRK7ftUowaRRRseSBIxAcIKaatMOw9wYa7OeIDibG1e7sLpACw_vJCIqVXJo-QeES8xbxWs-OyUQzp-UDA86VlIVPPZZy3n4ZwVp9J7mQ4tNXeitoTUjLybfcrleE6lrArlC7WxKBFR3X1x)

課題: 中間状態の無用な命名
--------------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

課題: タイムラインの表現
-------------

この図だと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。
