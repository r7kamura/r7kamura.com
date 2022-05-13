---
title: リッチテキストとしてリンクをコピーするChrome拡張をつくった
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

使い方
---

[Chrome Web Store](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)からインストールできる。

拡張のアイコンをクリックするか、キーボードショートカットを呼び出すと、見ているページへのリンクがコピーされる。コピーに成功すると、小さなポップアップが表示される。

ショートカットはデフォルトだとCtrl+Shift+L (MacでCommand+Shift+ L) で、これはChromeの設定から変更できる。

![](https://lh6.googleusercontent.com/MkI-iE_8jjlcmY8tDNq5Ovq8tg0DGUu3TR2efyuEZi-ueXzV6ilVOF_RMvrBlBB-YmW9T9Ej4IR236hWDdz88vtogHjNBH695rKZo17-TII73GispbztXxdDk5198vxCd1O8zyN4Jpgdk4RxIA)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

![](https://lh3.googleusercontent.com/u1EDET7JCtjUmJoMn4rO1XmPZ6Cj3yPYGvkq97jR-of-qruiHxNJxSoJuI2LVuq-h2C-VEQHAE4IDY4Txp2uulWioNVR2S-dtG3GWK114F2jpOvuCzIbrf0AkSiZRXpUVJrgsymnHt_tdDKW_w)

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh6.googleusercontent.com/c4AC-dENCZNszTU8PJfOQXDaHcL5IEI17xUmV9SI_b_-3P3zHpEZofMr0iXhLgX4FfJJOmO3BBiq3zyrVWyokWezEvnsTkpACeUDxv2SPMHt_EioHitf6v1mH5IxzdiaDk4p0ofVN6BIttLCag)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
