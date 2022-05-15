---
title: Mermaid記法で料理のレシピを書く
---
GitHubで[Mermaid](https://mermaid-js.github.io/)記法が使えるようになったので、練習として料理のレシピをMermaid記法で書いてみることにした。[https://github.com/r7kamura/cooking](https://github.com/r7kamura/cooking)で公開している。

記述例
---

料理のレシピについて、大まかな作業工程は記憶しやすいものの、それぞれの食材の細かな分量を忘れがちという問題を抱えていた。そこで、フローチャートを使い、データフローに焦点を当てて表現してみることにした。

![](https://lh3.googleusercontent.com/PMjgppDCSBVzZRc58WzWbWt614NxUlMV1vkSZkc-LhDv0ymgJWkpTA_p74Fmgvpup-fe731aNvsTY7EDhqQV89EFCpc4e9YZtyWHkxPxt3uNVHIZFbgMaTksRRaDF2ThKvNcahQX33A_9SqYTw)

これは混ぜるだけのサラダの例。こう見るとものすごく単純に見える。実際、ものすごく単純である。

![](https://lh3.googleusercontent.com/KH88JgLZU02dezupDL5oPRj0STOxUk6pAMTO7tQQ44z0uN7PEWhmXVjj3-FDVtVRobUrsxCPkx8tM5vyRwlCdxp_v94x9SwqZrPqAne3wOwA3LxGuEyMLJKJdrTMstiCgLRZAeGmsX3TXdgfng)

これは鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

改善したい点
------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

またこのフローチャートだと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。
