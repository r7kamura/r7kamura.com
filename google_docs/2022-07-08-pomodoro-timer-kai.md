---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/dvAFG97-t-XTI_NVGeHqisUADkDRAkJpmv3ub_vypElAKnPdaxf4a4wkkXiO02KPcK7PIgHxR0yL8tIoPbbnBbp8pOKS0dzbfSR4HYJFV5ZDh5opS-TxOEEfCMiuynhGgTGkWBzUivAcENtFXY6F6Wg9-q1qJI5naGl8iXMacuaUKGq3w2t6H7yPr3mcrw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/jbXOGtl5j5QdWvq5bRO5lRlJWfuhWg1XhsF1loNgsNcL0clHTb28_xJBdAJ2H3BIAetSoueVb8jPbu0oUtNwf66Jk1kHTUc0egtPXz6h9Eea2ItzE5m7hL_F_jqwYo1RxuqhcFpYPst8BJR3OaiBiv7WWRu6xa8G69jhFAXq0HRiG9BCmXClXn-_mjwEag)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/EonGyn2GosAn71w20QJY0D8bNYvncnAydLbYCkRZa7D-IEIrX08BzIprLdhJWbEb54ujgC5y7OIAFLKF3hSWk98xoUzCqhcHeFa8zJXFwI7qol5jHEqx1f2R-btyfQvjnYHwBCbrXUnoS6inTZ_3pBFCrXyX5WnFV-BSoaNNBPebhEn7nYWJL8EPBmPZIg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/Beg_M4KHmeYiZDBIxpqkJrOqqlmON0gR9lL591ItMNlgbW8vFzljUT0Z8upQH0tF8AbQerXCjyAk-AVXx4iAa2roJ8ExyHy63EIrufOzmWCJjKcwH5yCsR25ZYzim2iE_3OsgZGP94bX1P5M1H5c2BCB2GlCz4SNIHZfjjMdJQxnebmWOaLForyWP84L3w "配信画面の様子")

![](https://lh6.googleusercontent.com/tHkFH8aIdzEqwtrz7RO91muygQ3ZTfvOvL606oAJo00EY1G9F-nzbnRseg9_037UOdbBpzs6iPYNJbb4OqDrM_5HVVHObG4n7HjLIeUSjPjTFiX5PQE3rfHSgKLcnZ4tYwMcmYmieKYYAYpsSUdWbtmrXG62SAqkKSktPqMSjmwnWlp41-niKZXC_wlgNg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/jqkbeMMqLvfob-VUlgc2ooqTwnaeQF2aX3556wmcMdtTC1XXtG27YO4qCw2iAITpteehRSFli3hmGeoqWGfh9thNDHu84WNAlelGOqEbNlDE3ilub2MeVj5A0-Soc96o-P2eniJy2k9N9HEnmvsEOFkefXL8-IH8ilMhhgKZz7GknPeu7Px0Oel_2kUVdw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
