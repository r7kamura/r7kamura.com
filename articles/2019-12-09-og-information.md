---
title: ページのメタデータを整えた
---

![](https://i.imgur.com/RjZ1jpFh.png)

meta要素を見直して、これまで用意されていなかったdescriptionとog:imageを適切に用意するようにした。

トップページと記事一覧ページでは、og:imageにはウェブサイト用のデフォルトの画像を利用する。descriptionにはページ内に含まれる文言の一部を利用する。

記事ページでは、og:imageには本文内の最初に出てくるimg要素か、それがなければウェブサイト用のデフォルトのものを利用する。descriptionには、本文内の最初の一文を利用する。最初の有効なテキストノード内の「。」までを一文としている。

twitter:cardの種類は、デフォルトの画像を利用する場合はsummary、記事内の画像を利用できる場合はsummary_large_imageとしている。
