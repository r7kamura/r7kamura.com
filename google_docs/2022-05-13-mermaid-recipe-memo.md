---
title: Mermaid記法で料理のレシピを書く
---
GitHubで[Mermaid](https://mermaid-js.github.io/)記法が使えるようになったので、練習として料理のレシピをMermaid記法で書いてみることにした。[https://github.com/r7kamura/cooking](https://github.com/r7kamura/cooking)で公開している。

記述例
---

料理のレシピについて、大まかな作業工程は記憶しやすいものの、それぞれの食材の細かな分量を忘れがちという問題を抱えていた。そこで、フローチャートを使い、データフローに焦点を当てて表現してみることにした。

![](https://lh4.googleusercontent.com/462kAFnSERd_v3oXLm5efGJesiQ5Lx4_cT7O81sWFOte0v_z6n_mIhYjgypYAugJvLK_FRFqhz3LJF-vpQSxyjU-hQQADQ_S7WrChLYTJe9G1ozD8Z9Z0DAyGO2XPrm-knYsxNro7xB1sJi8lw)

これは混ぜるだけのサラダの例。こう見るとものすごく単純に見える。実際、ものすごく単純である。

![](https://lh3.googleusercontent.com/1CQoV_qKIydC7x9fehi32mzXMUM6YnxhY1BqVVhNf1N7k3Nh1PaeFg5fo07f-0sTmMJDUfdwg__Q8rqjCKRlTR06AjkFVGoT0gfF-cWnLLmDvvd7JURWGgLjzV9_c2snyYIMIpWlPsXkh6MTpw)

これは鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

改善したい点
------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

またこのフローチャートだと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。
