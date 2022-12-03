---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh6.googleusercontent.com/6IqosjmAAQh3Eo7roOPdhFGDGT0lVHBxcDtUQghn6x8g4HogRTu1eXroRyl6n6eeaT39FeXZda4XQw2phdsNn09Yua2Xbw-CoRdhyEVtGoRQ_org9TccWUqMW7Egqey3rsUvB02AvFnApGkgVC5D1gQ4X-WZeUEB33VohJklFDPHpOmjVAVN3Anjum5R)

![](https://lh6.googleusercontent.com/Ml_rZQBO3USUw5rL3xhqD2I__-IzYpnd0Lvl77ULd3GChFMJG85diir1i8VmWWPxOAzZpVAuOtFhihO9HNzWOlZGd6-A8curepoXdzH0kW4R9qVG-nA9otViPVI3UCpzzNDStRBei1-L731pB20JRZ6AWtzMo31itqt9UJ_lqCMIaRvzEr4yorfNbgOi)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh3.googleusercontent.com/H7bbOjl1zTFet7xvzUTg7yfy0DGpDKGAMi3e_-ropJilJp9PTOZSjeHCBSLyQ-bp17uLRAo6dHsxmhtfas5QYfoxjUrdvNULwlVcgfhnGpg8QjwhRzjiCdQG_MNjV5h6vC8AoODSv-Y5n5xitl6O4EP6SAuBK7-dbM8U83OYVxxhugcM1h-7n5Jeg6l6)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
