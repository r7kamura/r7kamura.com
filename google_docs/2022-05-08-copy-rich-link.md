---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh5.googleusercontent.com/_ut5cBmhb_wx_2XTNCb5F16r5TW-sjc_wVtQPdV25GB9U0rHAUQWBbxSdZh-BL9U4kmkZhVNp8Qp6gONgZIKM4x4FMq5SL7duLEFrmJ51ftdcxaLs3OJPuPgOAkuq0b_Yzv_dRaXWFQiJcjdt9slyENFKI87bFVM1rHyfr_p48M3-y4csfWBktLEoeFN)

![](https://lh6.googleusercontent.com/qG255M9bfsSOe9Y5orrQmIY0WtUkBdG7UuPsL1tah204UDiF4ZtvY5pHw_c5dN7Htr2NfE_S0nShbhMl6nhdjmvtJLIXf_w5s7s5jEz-EH8o-x43nJXb_143WRx5bhTq_DP3vRmAblA8hDsBL3dekkCBEziuNjKnuJWVxnGV01x_mWoSTak46ewYjvsI)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh6.googleusercontent.com/eM5izT2ZIblql9PEAnzQSfdhDWowvQlSW4gxwz786aaFjbrhVZvHfxLyNezxkKZFG4g6vCFcoKjjv4YftUv5W_Kunlds7VyLoxEXvpNtBiCjT6Bv5LY2NcbnTVgfent_BZ3EZP5-DgMBYRDrHqr-OI1fESqKxRKSGa87HPw-pZgyZWUwccxy0fIIpaue)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
