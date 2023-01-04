---
title: Copy Rich Link
---
[Copy Rich Link](https://chrome.google.com/webstore/detail/copy-rich-link/hikiamlgpdcabppakpmemaofmkgknpea)というChrome拡張をつくった。

どんな拡張？
------

見ているページへのリンクをリッチテキストとしてコピーする拡張。アイコンのクリックか、キーボードショートカットから使える。コピーに成功すると、小さなポップアップが表示される。

![](https://lh3.googleusercontent.com/3EJ2V7nNkm6QNaAJ_-P5eU5kMHyaRxfXF5JjTJaic9db9qkumb6iHoy9d5XBP7DjHeFaB78qepeRkCriMxWMTjRWG5ZJW2x0hrjIwzMe2Rk0K9MRCRxgb7u6wAfzb67Qq9FF7G1jM9gbbpWdPbX3ZWFU6WTburMzbTeK5Ue11Q1Z0LVlO6-JZHwmjlGf)

![](https://lh5.googleusercontent.com/HtQ-IB9BoF38hauhFe1SlEkH_J8ALSDEReo6qxOnVWpd9gFuzeUnU5EVm9f_W4DF72OHI5c9v_KfceCE40MPJodgUpBaHAAlc1VD0A3mjU6vRIt-fPsPh4H6Sku-5EGFI4UVR_rUKlY30SyLU2tX8SFR5hyBMYfVVQJxfye13YwwSDye9aNh2BctAiPS)

GoogleドキュメントやSlackなど、リッチテキストに対応しているところに貼り付けると、いい感じのリンクになる。

キーボードショートカットは、デフォルトだとCtrl+Shift+L。MacではCommand+Shift+ L。これはChromeの設定から変更できる。

リッチテキストに対応していないところに貼り付けた場合や、Ctrl+Shift+V (MacではCommand+Shift+V) でプレーンテキストとして貼り付けた場合は、「”タイトル” URL」という形式で貼り付けられるようになっている。

![](https://lh6.googleusercontent.com/-u2Zq5P4Gi539wMR-8G7kPEk94ypPfMPWntnIi17ZuI0kLUZjSuNtEJsaFW8V63xlCytZMeXMOh8NwWVuHv4DL4RVqvDdQ8mv-NjASHElYAjxeCQQC9oHtrAoz3MSVolcIUyJBQ8xL2cf4a3v_jP_LPqfao-YveRRJmu1cKPOLGobeXf7LGfbfQ7ezUs)

開発の裏側
-----

つくった経緯として、最近このウェブサイトの記事を[Googleドキュメントで書く](https://r7kamura.com/articles/2022-05-04-diary)ようになり、もっと楽にリンクを貼れるようにできないかということでこういうものをつくった。

公式のガイドラインでは、Chrome拡張は単一の目的を指向してつくられるべきだと説明されている。何をもって「単一」とするかは、[Extensions quality guidelines FAQ - Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/single_purpose/#one)でも項目が設けられているように難しい基準ではある。個人的には「しょぼい」拡張をつくるのが丁度良い塩梅なんだろうと捉えている。なので、設定でカスタマイズできるという無限の可能性は捨て、抽象度を1レイヤー下げ、用途に合わせてしょぼい拡張を沢山つくるのが良いと思っている。

今回つくった拡張のソースコードは、[r7kamura/copy-rich-link](https://github.com/r7kamura/copy-rich-link)で公開している。また[Chrome拡張 つくりかた 令和最新版](https://r7kamura.com/articles/2022-05-07-chrome-extension-dev-2022)という記事に、Chrome拡張のつくりかたについて調べたときの情報を簡単にまとめている。初めてあるいは久しぶりにChrome拡張をつくってみたいという人の参考になると思う。

今回はクリップボードを扱うプログラムを書いたが、少しはまったので書き残しておく。現代のブラウザでは[Clipboard API](https://developer.mozilla.org/ja/docs/Web/API/Clipboard)が使えるので、クリップボードを扱うならこれを使えばOK！と思いきや、これは特定の条件下で動かないので利用を避けるべきで、結局は昔ながらのdocument.execCommand("copy")を使う実装に切り替えた。
