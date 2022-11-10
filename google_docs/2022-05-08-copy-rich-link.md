---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh4.googleusercontent.com/B5mmSfkjQxfk-42kRnmxAr9SA3Cjf_jrps5pbH4RUTG4mCzbGyxPwbHBTkcnL7jcWBNb9oV45LlyJOC0nzGO4mX8TxO8KQJ0U1hZFzyn9sQ8OEkAOhYud5gxtWi9Qw9VlF4RPvRUaRxDi693ZSpj3tE3o0HBQuQjNJucQZeu3LmvR19mvxYbuA3XFV9a)

![](https://lh4.googleusercontent.com/0d4WqZxIz1pjWgzlvO96AEUDH7xVQBKJynuNpPnfYf2b6FxmfI56xQkO59wP6TliRsJxHye9EMsQDyfrYaGoDOOR-XJav6C3AoJidVkynsxHwn5l5sO9z6QK3ViSd4-HU1ySZv0fFheS63DECag8TsdoXg19DjaAZ_x6zdRTI24opaHG5i0Yb49GvJKT)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh6.googleusercontent.com/U6vtYW1MkG7c-o2VcyQ1gg7FctxGFdn4iT6G3lMW1jTGimPCP9m33gnvzqdS3tatlkaJ-xkP6wDHmqbomLAB66TR7Chq0EfRG1g4bMkjf6ekYIzjpCnFlao8ianhVfqceRv1Bcg5Qol1zH1YjVnqdHs2xy9j67EHL8s16CaBeWQfZ3tqrl_uDYlddby1)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
