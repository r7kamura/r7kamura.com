---
title: Mermaid記法で料理のレシピを書く
---
GitHubで[Mermaid](https://mermaid-js.github.io/)記法が使えるようになったので、練習として料理のレシピをMermaid記法で書いてみることにした。[https://github.com/r7kamura/cooking](https://github.com/r7kamura/cooking)で公開している。

記述例
---

料理のレシピについて、大まかな作業工程は記憶しやすいものの、それぞれの食材の細かな分量を忘れがちという問題を抱えていた。そこで、フローチャートを使い、データフローに焦点を当てて表現してみることにした。

![](https://lh3.googleusercontent.com/Ew-ENSc04QV0DgbP6KV460Pm5RZ-cX7bqHA1xXfzUprpTu5yPanT-iK-EGaq7uqIyga4bhtfetIoOSGdNWqgUU-l5IFDEhQUvY1PdPmkP9AWtPDxk0bRcxBbLqeGf9ANbsagx7BJoQCsVqO27Q)

これは混ぜるだけのサラダの例。こう見るとものすごく単純に見える。実際、ものすごく単純である。

![](https://lh4.googleusercontent.com/BVTNwVWwGTqMRnVsii7iocwW9RilaCC4vz1IwF2AwDQDbEYSiqPSZSJaF8YK0hQx2EdJyaQUyNC56YXq206mT1N6QSYGtCvQMuiDF__was6QpF7fF2DN_3gGpF1CV5iZOp2CI1HC44RgJ6B4hg)

これは鶏肉を炒めてソースで和える例。必要な食材の分量がすぐに理解できて嬉しい。混ぜるだけのサラダに比べて、幾らか複雑そうなことが分かるが、それでも理解するとそんなに難しくない。

改善したい点
------

この形式だと、「ソース」や「味付肉」等の中間状態の概念が発生する。この中間状態に適切な名前を割り当てるのが難しい。あえて名前を付けず、無名のノードを作成しても良いかもしれない。

またこのフローチャートだと、タイムラインが想像しづらい。例えば、この調理工程では肉の加熱に最も時間が掛かるので、まずそちらから処理すべきだが、それが表現できない。矢印の長さを利用するなどして、データフローとタイムラインの両方を表現できる形式を考案できると嬉しい。
