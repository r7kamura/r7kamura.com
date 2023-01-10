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

![](https://lh3.googleusercontent.com/c1Q3wKsNcDu62G320259LohfTp9Uji-C5woFbs6wUpQ-NTotmLXedYxbr1X03A6A9GPM_CgQ9zDFWQFb8C5h4mSTJwS6zEFLodx0LadvcN5b2t9FzoMZBvjejBO0pZuXZeIMkgH1TOJiWn196xZce6Xtcwef15wCvLEXmSMyp8hU8jSjwoBJTBUx6kI4)

記述例: チキンチャップ
------------

鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

![](https://lh6.googleusercontent.com/myITm0BVdXbyCd_6aD_MsAAkdhV1q6pS_ZjJcU27aHYzrYqovVA3FnzZSqt17T24NcRc3PbyHWwN8HDzogO1z3Jn-YH3gyeuiTeQNMgLH7UdHDHh6ixJU6C9AhR2uEUguhfjlcpNpM_YZtz6DopWP0EK8yGNKd1snPJ2eyGqnZYFhiSEwLbw7B6PtKva)

課題: 中間状態の無用な命名
--------------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

課題: タイムラインの表現
-------------

この図だと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。
