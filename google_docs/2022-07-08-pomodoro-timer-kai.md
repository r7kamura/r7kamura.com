---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/9t85dfJUBUsSS1AbwXbXSDVHvuBoaWKl9PXnsMGUGRk5dZhJ1MfAHhCE0Y7NPU1NTULAQRQtE8PFhMWob79A8db0HIt4IFQIRdmYL5n7wGkAhe7WTlsePEJBvBbQ2bP20nLwMgoalHrQMSfWIU_CkdpPFqNvh8Z8Gry5sSJs1stCoDoWQBTKzD6RqQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/8hlWSQYO7pnnMVrWasRQRSLheCXIoxY7K-O7Q64YrR1Xi_0HitU_Af28KXEJ9wmPyt5Nb-BUdAMtooNFVA5dQTuEaK_K3V4JenLsRQU2RXrYxpzR3d-Hh14thJw89VVqiTnpWEf8i3fhNJZgj0R6UvLWZu32mSbu-ZVDX3LtQWBrXjuFsrotH_hWyQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/tkUWVOjDIMcZfDNnxGa8kXnDnsjM23i1CQh7_lTbTJXoIgXaFulQWtdWfsGdwP19LzmwM61LH5b74ALJ5wflMtJpWwoV__jiroJTGKU7-HrifnBFPOIa24EpzmalIdxCkximptAbL5Ab_p60_fI_9cn_H4hzbG6VIYI3Jm0Ul-cV6Vgv6wpZni2dEw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/-TbeTYntkipL0Puy1133d1cnOGzJ4l2-KJzY-0-ldfeeK4QpFrYckdgnkBP0643zwZV06tGMgf_QPnrtG5r5Fq5yRjTYEWOGMpfrxx3f-7-kyHKPKVXPNen8vYG5EGmV1tCcbIZLQbO3u2vqhVPxo3MI8A6inUJfJq109thLrV1zbItMdBJ83HrPog "配信画面の様子")

![](https://lh3.googleusercontent.com/wOOVVSnpFRN6RvwoK57Ljkjw0ocZ6EXbPj3B3xc0Qxi_7nLdJAO9PPcyxA9d8NuIIglolGUmhdgLNt5VgLno5TgzlsttkIANOPoh73T0SX5CURk1FZ3VkkQhhNvonT8a4dH9LDPR_0hHt1PUcuBWgOSChscptRD_rSCFhSJ35ph5vzTSv5pxi5ZdSA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/y36Y2xMtWVwVnf9Qjfw7bqCavg-y9ccJo6qu7xbw6U9VBNMb8EJCUgArofvveA2pwoYHPvHx4kxAOO3AP_pCljpZalS8s0V2xwsQ6rArPDI1nOSYuRIDQS8fresLGB9MYucczKPn7EJVQ6LEzLuU4f-kM9vcaR--uaSIM2k1WZKyC-X6x96renrSEQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
