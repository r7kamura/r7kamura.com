---
title: Mermaid記法で料理のレシピを書く
---
GitHubで[Mermaid](https://mermaid-js.github.io/)記法が使えるようになったので、練習として料理のレシピをMermaid記法で書いてみることにした。[https://github.com/r7kamura/cooking](https://github.com/r7kamura/cooking)で公開している。

記述例
---

料理のレシピについて、大まかな作業工程は記憶しやすいものの、それぞれの食材の細かな分量を忘れがちという問題を抱えていた。そこで、フローチャートを使い、データフローに焦点を当てて表現してみることにした。

![](https://lh5.googleusercontent.com/O3kXhIXeTn1ZbGgJdXkzK4UyiQwYLmztL9FAwCJQkwlC-9JQNkzq0gHYuUsn5GFzLaaUxLNMI1-u_aATOR3P8Jtz0wUI8oCqvUzCY5AvNnAF2PqRKsMfskLWawPSgPRhiUbtVHm6SvEuwzag5A)

これは混ぜるだけのサラダの例。こう見るとものすごく単純に見える。実際、ものすごく単純である。

![](https://lh6.googleusercontent.com/aGUtBgR2MJgLvzfcVSFmQBx_KTW4I72IMTpHNoQdiSXdOLwbCHsb9WgJXZ2Zz5mHlrXUWKsHpCHCAuC09VWBFskXHG68agqyfGPjfNQRJJBJG0Pw7fdcwKCLmVwXMnwQ2r3jqitjSsQNl5-LHQ)

これは鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

改善したい点
------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

またこのフローチャートだと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。