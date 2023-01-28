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

![](https://lh5.googleusercontent.com/hyp-hcE3T8HPty-gITOOnKgguodll2jhKwk_cKgCdmAA06lhU_dydE0HyZJMn6K74gQFTvgWL4QEXQjdUStMgwdq5w_vITLjamYr3aJ3ijtTegx-rMO8BzOJqqOHWIljq5jIVvTcnT5Zu4C_jWTWayJp_Eff00TI2uQdTmMEWUxd2dF3h8_LJKWQTq7l)

記述例: チキンチャップ
------------

鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

![](https://lh3.googleusercontent.com/ekrh5QCtDoONeEdNkP8-E2oKaam6p8yo8emiDVfATPSG9nqXf46e08kdcxto1RKyK7Qwxs1DFpwafPicv__vJ3WD01nloxWpzf7H6KSZxD9_ng0vYOruzkGGbHFEYEzxkhDkGqVD8K4khwvPE0hlwolFdT83pMERB7TeZ4nRDCQ36t3RlowwcGWf3J6h)

課題: 中間状態の無用な命名
--------------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

課題: タイムラインの表現
-------------

この図だと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。
