---
title: OpenSearchに対応
---

このサイトを[OpenSearch](https://ja.wikipedia.org/wiki/OpenSearch)に対応させた。

Google Chromeなどの対応ブラウザだと、ロケーションバーでr7kamura.comのあと半角スペースを入力したり、補完候補にr7kamura.comが出ている状態でTabキーを押したりすると、ロケーションバーから検索語句を入力して検索結果に遷移できるようになる。

実装方法については、[MDNのドキュメント](https://developer.mozilla.org/en-US/docs/Web/OpenSearch)を読むのが分かりやすい。自分なりに要約すると、トップページの `link[rel="search"]` 要素でXMLファイルへのリンクを張りつつ、そのXMLファイルでOpenSearch description formatに従った形式で適切な情報を与えると良い。

Googleでsite:r7kamura.comを付けて検索させているだけではあるが、自分で入力するには難しい検索クエリなので、そこそこ役に立つはず。過去に書いた記事を探すのに自分でも重宝している。
