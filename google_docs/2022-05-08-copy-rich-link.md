---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh3.googleusercontent.com/X25f02zuD0WaAJ-1ewILwznCH8qnut2QL556J4QthqMBDTmDO42b2icqhDS5MwBkwqNbqh2vGBhHZ5KnKHoKkXcV4tY1I5l0jPNeG4iPyeEvzsXdKJrBLWBr0AcnKjDHDal0MrU0CqWkcUHugQU6P4EvQfq9II0w45k_A_zHVTPOqWSTSQPKvfXQPWrg)

![](https://lh3.googleusercontent.com/CCI6mhYR_ej_iEnCS5XIgPSxRVAi3Dz1TvMlr0IGD-AVAI1kMveZZgVoKIeD1vYpgosAPmXU4ZWG4V3hleGg_4ZOIz7pijsbixs1c1rl3iamuprKjVibm7KQ037_K9V-HLg_FeaVmudXPoouR15yp1em0RcebFomdCboxiFQQV0x3f5SpstiopZD4x5R)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh3.googleusercontent.com/LlqQzSBukw3Q5USxyx4edAXn75kZXs9f0lSMjNbbHnnlzMArLnOCQwFUpJ_qpT6xCQFeZ60hJujVa6c5UxkmD10oslsyc5kP3ReDigcSe3HF89Gzg59IIFnWAy36jlIz3kM8l5FW8u2p5exSaA-5tAD_tQ_bgU6Dz0UZVphHPKWy4I_ySdkp4nUGChjK)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
