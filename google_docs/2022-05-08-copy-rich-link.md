---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh5.googleusercontent.com/gpcVuM_-kUV7QqjECu887L_4uCJ6_Y5PQFEhQr3DyKBkd5lhEUXFx7RgZuBOcfz5lYLh15ubLVOCV1ZTgLS8Ka0ne3cCykz0xQJvYHB4ZSeerVSMy4Ys6WtKAVPO99MGOoHElBAPHW_0ZDaYZiqHlTLM1oQaHXJnHy4JZ4k2tp85PynCo4QWjQEyquMG)

![](https://lh6.googleusercontent.com/H5ewBSgdmrwNFHXMllRriLqaD4bID2n38VWj-RO04jz5_OPxv7TQL-dCWFxF4RfArl9K3NXL2MjBMhQbAfDjsFDDiOARBZtM6VZbpPCvgsT9tE5t--zQWdvur8ptSQahHUf1Ddw3OYm17QBUGp217j9-N9FYrPzGG61kYXQBhgZLR13Y4WW1qFh-X484)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh5.googleusercontent.com/tMzsNzjcZY5tjQEQ6tdWTQRsBQPAqh6ONzW278eAPZSaZH56Kghngcj4nZAHFxinkeOJrXHqQo8qkUUy7TzuBaJmQf3uZMcGXJRtSd6Oeou3qsSf6tXzu3gsc1dxEIqsVYiCrYD-EqpH5Xjw8XXjSb0ZGbSqEQG82pgCyNsOWzV2UaQj91d53RyQwxBO)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
