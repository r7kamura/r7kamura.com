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

![](https://lh5.googleusercontent.com/jfV04mgR19YLlj7hn-xkgHTLXiFkEmYnb4RUs0ExfrjO9dTxQHVzJi2MbLY7OVzU9KgwyvInqZrVT06oE_FIusZ1wbxDMejnszIO0fwScv10OGhItmdCH49e34D9iBF1VN75-xqAh7T12u1w8eC3Y4f0-2UA31UcTzPfwtbHa_lJ6nB--6_FtP648_LX)

記述例: チキンチャップ
------------

鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

![](https://lh5.googleusercontent.com/n7AAT3LGJ5arz3usasBXdtKhTmPGc00dKG2OyqEqzgEtX2hGqnIw-3vGajahfQ4vKZ46tL6Uq3uj6Ie3jQbYzcvYjSafXC8qgp5IgJWKDi2F7vK2CgoiPiefhDJUpRla8uLrLq8WgkiGbNy3w0V_vKQSgQIMxlXEvg3XguwQaXtO7-cllsZANBpulS25)

課題: 中間状態の無用な命名
--------------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

課題: タイムラインの表現
-------------

この図だと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。
