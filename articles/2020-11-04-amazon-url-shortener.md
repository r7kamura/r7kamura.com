---
title: Amazon URL Shortener
---

[Amazon URL Shortener](https://chrome.google.com/webstore/detail/amazon-url-shortener/bonkcfmjkpdnieejahndognlbogaikdg)というChrome拡張をつくった。

これを入れると、Amazonの商品ページにアクセスしたときに、ロケーションバーに表示されるURLを自動的に短いものに書き換えてくれる。商品のURLを共有するときに、長ったらしいURLにならずに済んで嬉しい。

## 開発の背景

実はこの拡張は2013年頃に開発された。今回ひさしぶりに見直して、不要な機能を取り除いて名前を変えたり、日本以外の18地域用のAmazonのサイトにも対応したり、申請用の画像やテキストの管理体制を整えたりして、最終的にChromeウェブストアに公開するに至った。

なぜ今になってこの改善に着手したのか。ハロウィンにかこつけてGitHubのプロフィールページがオレンジ色になったので、あらためて[自分のプロフィールページ](https://github.com/r7kamura)や[スポンサー募集ページ](https://github.com/sponsors/r7kamura)を眺めていて、過去につくったものを見直すことで何か価値を提供できるのではないか、という発想でこの活動に至った。このところ毎週土曜日に個人的なハッカソンをやっているので、そこでまとまった時間とモチベーションを確保できた。

## いろいろなAmazon

対応も簡単そうだったので、今回を機にamazon.co.jp以外でもこの拡張を使えるようにした。[Amazonのサイト切り替え機能](https://www.amazon.co.jp/gp/navigation-country/)で調べた限りでは、少なくとも現状これだけのドメインでAmazonのショッピングサイトが提供されている。

- www.amazon.ae
- www.amazon.au
- www.amazon.ca
- www.amazon.cn
- www.amazon.co.jp
- www.amazon.co.uk
- www.amazon.com
- www.amazon.com.br
- www.amazon.com.mx
- www.amazon.com.tr
- www.amazon.de
- www.amazon.es
- www.amazon.fr
- www.amazon.in
- www.amazon.it
- www.amazon.nl
- www.amazon.sa
- www.amazon.se
- www.amazon.sg

いろいろあって楽しい。中国版 (.cn) なんかは見た目がわりと違って面白い。しかしURLやサイトの構造はほぼ変わらないらしく、対応自体は容易だった。

## 申請用リソースの管理

今回この拡張を申請するにあたり、画像やテキストなどのChromeウェブストアへの申請時に利用するリソース管理の透明性には少し気を配った。具体的には、申請時に利用したテキストは全てリポジトリ内にそのコピーを含めるようにした。またアイコンについても、そこまで凝ったものを用意したいとも思わなかったので、ImageMagickで機械的に生成し、その方法もスクリプトとしてリポジトリに残すようにした。

## ブラウザ拡張の開発事情

昔と比べると、ブラウザ拡張の仕様も随分と落ち着いており、また拡張の設定画面やデバッグ用の機能、Chromeウェブストアのダッシュボードの機能なんかも充実しているので、コードを書く上での困りどころは随分減っている。

どちらかと言うと、開発自体が非常に簡単になった分、Chromeウェブストアの審査に対応することの大変さが浮き彫りになっている印象がある。自分も何度かChrome拡張をストアから取り下げられたことがあるが、要領を得ない定型文的な回答に疲弊することも多く、[Gyazo Chrome Extensionの再公開について](https://blogja.gyazo.com/entry/2020/07/29/173000)などを読んでもこの状況は今でも大きくは改善されていないようで、その辺りは少し残念に感じた。とはいえ、これでも数年前の状況よりは大きく改善されている。

ちなみにこの拡張も、第一次申請時には「アイテムの説明に過剰かつ / または無関係なキーワードが含まれている」という理由で不承認になったが、説明文を改善して再審査を受けることで承認された。[GitHubのIssue](https://github.com/r7kamura/amazon_url_shortener/issues/4)に詳しい経緯をまとめてある。

何か状況をもっと良くしていくことはできると思うので、めげずにChrome拡張の開発を続けたりフィードバックを送り続けたりして改善に貢献したいと思う。
