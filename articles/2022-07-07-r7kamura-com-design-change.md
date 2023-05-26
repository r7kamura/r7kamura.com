---
title: r7kamura.comのマイナーチェンジ
---
サイトに細かい変更を加えた。

トップページ
------

すべての記事を表示するのをやめ、直近7件に絞るようにした。

完全に静的ページだった頃は1000件を超える記事を並べていてもそこまで問題無かったのだけど、Next.jsベースの実装に変えた結果、パフォーマンスの悪さが目立つようになったので、やむなく変更することにした。ページの種類は増えてしまうが、トップページとは別にすべての記事を一覧するページを並べることにした。

この変更に伴い、トップページではそれぞれの記事の概要文も表示することにしてみた。これは実験的な取り組みだけど、なかなか良いような気がしている。記事の概要文は記事の最初の一文から抽出されている。

背景色
---

メインコンテンツだけ背景色を切り替えるというのをやめた。

この3ヶ月ほど、メインコンテンツの領域だけ背景色を変えて若干の影を付けるような見た目にしていた。これはGoogleドキュメントで記事を書くようにしたことがきっかけで、ドキュメント感を出してみると読みやすいかもしれないということからそうしていた。

今回はこれをやめた。重要な部分にフォーカスしてもらえる効果があると思うので、周りがごちゃついている場合には有効だと思うが、このサイトは今のところヘッダーもフッターもかなり簡素なので、効果が薄い。背景色を切り替える場合は適切なmarginを取らないと窮屈に感じることから、有効に使える領域をそれだけ狭めてしまうという欠点を感じていたので、利点と欠点を比較してやめることにした。

文字の大きさ
------

文字を大きくした。

後傾姿勢で画面から距離を取って記事を読んでいると、文字は大きければ大きいほど良いみたいな気持ちになってきたので、一気に大きくしてみることにした。界隈の老化に伴い、自分も含めてこのサイトを訪れてくれる人の視力も徐々に落ちてきているだろうと思うので、もはやこのぐらい大きくても良い気がしてきた。

フッター
----

リンクが横に並んでいたのを、縦に並ぶようにした。

リストはツラが揃っていて縦に並んでいた方が気持ちいいという感覚があり、これまで横に並べていたことに何かこう呵責のようなものを感じていた。今回、内容の変更に伴いこの部分についても対応を加えた。