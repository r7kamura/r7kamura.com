---
title: Amazon URL Shortener UserScript
---
要望をもらったので、[Amazon URL Shortener](https://chrome.google.com/webstore/detail/amazon-url-shortener/bonkcfmjkpdnieejahndognlbogaikdg)のUserScript版をつくった。

[https://github.com/r7kamura/amazon\_url\_shortener\_user\_script/blob/main/amazon\_url\_shortener.user.js](https://github.com/r7kamura/amazon_url_shortener_user_script/blob/main/amazon_url_shortener.user.js)

Amazon URL ShortenerのContent Scriptを持ってきて、TypeScriptをJavaScriptに書き換え、UserScript形式のヘッダーコメントを見よう見まねで記述しただけである。

そこまで複雑なコードではないので、JavaScript向けのバンドラーやトランスパイラの利用はやめておいた。また、ブラウザ拡張と同じリポジトリに入れると、無用に実装の共通化とかをしたくなってしまうと思ったので、リポジトリも分けておくことにした。
