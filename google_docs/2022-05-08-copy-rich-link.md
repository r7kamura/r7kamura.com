---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh5.googleusercontent.com/sm7xNVjEr3-OLiQqAxVkkDD6FtBEcVIgvWiZwk9JMx5vSIcxfdBhafoHAtwN3qIl-DN_QRz6Im7jCFMh9EovJPMcJ9SN2n-GjJl1k-AtEliNptHkV_tqW7HKsPkNKg1ShO7QhnaqvoMBkovTCymiUUr4DXBldIQ0bszjwpJ_uQRfNc83ysalbIPPmXog)

![](https://lh5.googleusercontent.com/-FemM4vASRkF6jNQOxx0C-1fXG4zkm-pVCDgwjrq-PjRLXFViaE6Z4pmUXY0vSSbexVstiqf3_ERbFxv8wlvvXTJVMBhbawS00qkVWSFF9obOX7wVwDopt9G-s_bFgrCNskHR-hF0Ct3nkPql0h_835-A1WRNRa65e-f6pY_sT2DNsi4fThxI00Gb2zQ)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh5.googleusercontent.com/TP7bGP_mEwsl0tq5m0onmqCW29JOqaMYVbQg4JkPHXvYq7Z4wkJ3y4iW8E0M1zc6ASZhEFve_MdMxtO_ws0PGp7YnjFwtWhEDM5x0xX3x7tzD4P02rBNIfohGwYurAolpw5y_Dtua41xJSSRHOUM6E97w1TC-2Q5xhEJO-A1XeSWnMKt7GEQgzij94uK)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
