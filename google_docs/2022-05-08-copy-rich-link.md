---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh5.googleusercontent.com/j591XuxbsvTUj7VFlIdP7qaUkszAm4HF8xFUXxdt4jEcZSeJB2ilG4uFaAX_QggYOoAUdjSFUqQ5XeCWG603hKyGs0hhbLN8_PDIt3vfC2pddJiXo9KzQEfY0msDy27pV1UGfgPL-1UTMrn04r_D2Wl4qzgXAZRLCPXDE2umJfih6zX0Qs1BTgVpUEwN)

![](https://lh4.googleusercontent.com/I0msqE8pNmOqLZ0BTv6lqYm9V7Pfm_UcC9Pb2I0pi84LRgzi83eoyA6a1NiUMKRgcbwPtvlCOqHcr5p7SOZslMJFakPvJ-L4EZTT8PW7Nu7nD7Qx3XnTc9eNmTYLnD7rp7A7EMntrpmeObgObwXoiEOJQgg7l0bXMUwS9Nc0rlfDygq1rRVUwD_kDHHb)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh3.googleusercontent.com/ZRPhE3hBtTeC1qh33xr9vmg_L-ve1LHrVD7AiDGtI0mKEf8BS7NpyeH_OfH0UzZQshaipEizOUWPvwBKyRmREg7ycSMd3f9q58mB8WFd6P9SAXkFPcdOiL0_Ecdx5nX8Got4JbNLEnbJpUbDMZ3Vk28RXnBvWUCtXodnSqapPvdYA0AGfjUOTq1C_BXa)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
