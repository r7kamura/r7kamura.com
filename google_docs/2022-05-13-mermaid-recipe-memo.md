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

![](https://lh3.googleusercontent.com/oZwFZAj21qRc3gGr3WkNPez0hOH2RGFNNTJCWJ30SUiJ2AN6px9LRbwzVhgZShQnNl5_1K-ZGo7HSxnBvwNuAFB89dqFozt0UahipemofITvC_6Y2QuNQwojz--dsz_b46nd_Z_vCJIR3t4ftQm3L_6v38564tXIV8uJaIyu3p1c9gy9U_eeUM3B)

記述例: チキンチャップ
------------

鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

![](https://lh4.googleusercontent.com/ku8_jNltszM2H0AzYdNTMMqRScwKuklOLncuYAek1zy311OvrPnmJcYlznViJwVTgBUFMtgFpTJNGlxYRWVHg4sU3B_KTOfF61FMw_tgW3UPWow1s56aXL8etuGZ5_mDGoQ4G5kGg0DWDqlhIV-5BEYtPa_pfHfkXLsGKiDYOPL9T0IVSfnSh4lS)

課題: 中間状態の無用な命名
--------------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

課題: タイムラインの表現
-------------

この図だと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。
