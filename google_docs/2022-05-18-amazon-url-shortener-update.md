---
title: Amazon URL Shortenerの改善
---
[Amazon URL Shortener](https://chrome.google.com/webstore/detail/amazon-url-shortener/bonkcfmjkpdnieejahndognlbogaikdg/related)というChrome拡張を改善した。

この拡張を入れると、Amazonの商品ページへアクセスしたとき、ロケーションバーのURLを自動的に短く正規化されたものに書き換えてくれる。商品のURLを共有するときに、長ったらしいURLにならずに済んで嬉しい。

今回の変更により、利用者的には次のような変更が加わった。

*   より多くの商品ページに対応した (Amazonフレッシュなど)
*   一部のページでの不具合に対応した
*   拡張が要求する権限がより小さくなった

内部実装的には、次のような変更が加わった。

*   manifest v2からv3へ移行した
