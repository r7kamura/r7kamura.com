---
title: Amazon URL Shortenerの改善
---
[Amazon URL Shortener](https://chrome.google.com/webstore/detail/amazon-url-shortener/bonkcfmjkpdnieejahndognlbogaikdg/related)というChrome拡張を改善した。

どういう拡張？
-------

Amazonの商品ページにアクセスしたとき、ロケーションバーのURLを自動的に短く正規化されたものに書き換えてくれる拡張。商品のURLを共有するときに、長ったらしいURLにならずに済んで嬉しい。

変更点
---

次のような変更を加えた。

*   Amazonフレッシュなど、より多くの商品ページに対応した
*   一部のページで正規化が実行されない不具合に対応した
*   要求する権限をより小さくした
*   manifest v2からv3を使うようにした

所感
--

manifest v2からv3への移行をしてくださいねと、前々からGoogleに案内されていた。今回、重い腰を上げてようやく対応できた。ついでに、前から気になっていた箇所も改善できた。最近Chrome拡張の素振りをしていたのもあって、素早く変更できた。この移行のために素振りをしていたというのもある。

以前より無駄にhistoryを扱う権限を要求してしまっていたらしく、今回の変更で発覚した。実は一度これが指摘されて審査で落とされていて、修正して改めて申請し直したという経緯がある。この経緯は[Issue](https://github.com/r7kamura/amazon_url_shortener/issues/15)にまとめてある。
