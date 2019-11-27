---
title: OpenSearchに対応
---

OpenSearchに対応したので、ブラウザのロケーションバーで、

- r7kamura.com + 半角スペース、と入力する
- r7... で補完候補に r7kamura.com を選んだ状態でTabキーを押す

のどちらかをやることで、ウェブサイト内を検索できるようになった。まあ実際はGoogle検索に飛ばしてるだけなんだけど。補完で検索できるのは結構便利。

変更内容は[このcommit][1]にまとまっている。実装方法の詳細については[ドキュメント][2]を読めば分かる。

現状Googleがこのウェブサイトのほとんどのページをインデックスから除外してしまっているので、検索に一致するページが少なくて悲しい。

[1]: https://github.com/r7kamura/r7kamura.com/commit/2b0889d9e8b6427dc841d627cec52d800009ac91
[2]: https://developer.mozilla.org/en-US/docs/Web/OpenSearch
