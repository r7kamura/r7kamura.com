---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh4.googleusercontent.com/x662rPgUam0jtpHYAOR2GW4ueDXQOkrBfjc_6WdS9llaDtXsBJtCsdvwXe9sMdb-WR7yWI-FhBNAbWJGJfphv1PBU6xYHGvMt9DDxJasrI6j-KuoxQKsmOpkemWAbg81diM1cs5a2n5BSvWzkfrPaRqbI_m3aJP0Qzu2oSc1bebVcHj05iJj7-ZuI3zJ)

![](https://lh4.googleusercontent.com/aS4h6HUhst6Sr7E2O6c4hNQxW0cXFy_D4AuUgrV5P-e0u_yNITaWiPQ_ygStjd2Zc-VMawWYgr4V5E4-ezXYw2X6BrllGeb8EtUtfSBX0PNtV3oq0e8IyJTMqNZWPrFaH4ALZ3T0wI1BARgyKQ-Vls34eL7E4JsESuZXpqpHbxKvbMzEreOQAXGSm7qr)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh4.googleusercontent.com/NVRT3Y8_ZQdWNCqLrZu8fMdkd8VmP2qc1ppM13o1vSsYzNuBBR5uAYX3MWO1rZHNVO0gHKEjgxvkUvnsUzhO2xlfK9vtmRIDyXT-RT3xWwl11_uZkBTj--aHLYbYxCKik0Cv8fajmgrX_pfpV9FweX94rOhLI0qoJkfkH3ho80KuOW59snAiyFxy8NZN)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
