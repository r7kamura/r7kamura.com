---
title: リッチテキストとしてリンクをコピーするChrome拡張をつくった
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

使い方
---

[Chrome Web Store](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)からインストールできる。

拡張のアイコンをクリックするか、キーボードショートカットを呼び出すと、見ているページへのリンクがコピーされる。コピーに成功すると、小さなポップアップが表示される。

ショートカットはデフォルトだとCtrl+Shift+L (MacでCommand+Shift+ L) で、これはChromeの設定から変更できる。

![](https://lh5.googleusercontent.com/obBM5e-qn1vlGJS2FgdAl5G-F1dX4MoxQ1wzUYmk6XLx7lYGMJPlT9cUEOqnc6v-so6b3nGmfgbdxuW6uC7vrwyIYKKV0eOfy_8o27umx6D3822x7aIjFWGdOEUnxiRyzfrQVJVQZlcESjIbbA)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

![](https://lh6.googleusercontent.com/9V0uwRW3jM8a6f5Nyg8V6QPPYq94UbmoZ8LrvCnwsCEwkRNzMLcKiGCcRJhn3vp9e0c_5spBKaj67D6h5qpJr2lkDkmu1sHbF1R976-oK_OkYo395TDNJaAWxV3qz1vj908jFKtWYecmleQELg)

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh6.googleusercontent.com/P2fe07_8dnaf_yPS3TAPuSmHBqRerUte-SkJRPTG5aZU6_3xThh7h3Ir4dUO83ADDRz53o8PViT62F98oB83rP6NsRX61rQgPO20nOhcVned5fN7nKQ8SopfwLhNRNlLfCKBvYmuBsd3Pl0jyw)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
