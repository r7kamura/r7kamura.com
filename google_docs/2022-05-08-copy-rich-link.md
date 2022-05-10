---
title: リッチテキストとしてリンクをコピーするChrome拡張をつくった
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

使い方
---

[Chrome Web Store](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)からインストールできる。

拡張のアイコンをクリックするか、キーボードショートカットを呼び出すと、見ているページへのリンクがコピーされる。コピーに成功すると、小さなポップアップが表示される。

ショートカットはデフォルトだとCtrl+Shift+L (MacでCommand+Shift+ L) で、これはChromeの設定から変更できる。

![](https://lh6.googleusercontent.com/zvG7zVvhTYY8Q65YqJCSvLoF6jB2MwZneq1j66WL44EM9mwfDs9NuBSTLcyB75ZvuvP5_Z8QSQ_8YkkFeT1QjYXt-pzdNLPwhmgL0GCMbRGIxMK-YxrQnx6WBMKH6iF-3_pO-HdR-kAmXkFiGw)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

![](https://lh5.googleusercontent.com/dA3_qM27sGFtONOsJ8c-Xm86KvkW3pf0eE4FsxKfN3ERGmv1npNuVlxJBOMpoWNviDHv0BLh1gPZ8ZXenc_XzvXQ4t0fJtknA3Pp3Ul7yeua_Mnr_6gzVsfyNoH9du9mM7r_CZ9fZmRX9PeMsg)

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh5.googleusercontent.com/lNTqvXuQFoW2jn9X7tSG1Q0jcav_59e0kZ7QtPPU9uX_4Yi5-Wp-JSEy3gd-KImhFyntYoh0qNld5rA33cB3_pL4Z1jO5DK8tOQn01I9nO0B8lnrDtyDhL3BLPdkxAipHdT7CcI_SzvZ-TiLXg)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
