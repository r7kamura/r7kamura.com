---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/FTpTzSE26keyXTv2qVRWFCEOU5_AT-Qq13iDONo4MaYyAGTXhsip6jZ-hWdpHhdsBvqsx-YPCiVli1128k8aNtZmKgv0yVg4DQSuj5qywI2RZdDlzWqkN33w4d7RO_7xCOL2UYiehG7DkN-v3GZS3eWgauOUQPh9G0G_bYT7-R_GlbzSxCLYkyzcd2yHBw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/u4frJzADUEdHSodSWeH4iIuRidDB7hGyDxkv_rW9y4LBwAfz9c4HUE98CPlPhmh9wWXm6h2yLx6g-aMIu0JSwNKHD6_LztIB3S57i-r2eCrLR6JBtJyFuzHuQMZMckmmpARVVhmR_UarKDSMJDqlTL29HPNTq7LxYjoTuRroKVqj-4t-SzEWHkk8nWJlPg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/rGsCFRvDtA4gXMRni4KoZUb0NY-t9rEjXnAg5yMh0WY9N6SL4xZdt1RmhBFi230RWGfZzOsmILYQ9SZcnGqz7uLWaIOhXMNou8J04JQtYj27vDHijn-ExdN0TLx4NZF8RmhmrrJeId6m21XXxjUcNvTGp1SmtH8gC1O4h3uVxzpYtwZf3JHq_cnRXRqiKg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/FBasjIt4MQ6aLpOL_HV2_2IOnYnAL7sElg-1K-oTOMliCrQ8yc5es6sQ7u4bljGXJ7osSDD_G_99pes5-UXyaGq0woth6l2Ux529jxsJWe0r0yuQPNPhpzjBlDXva1b2w4GhH8X10YN-SvpX103Y0K_Ad_E2WEpjXCRjtohnoBToooA03_aGuEggCZLKbA "配信画面の様子")

![](https://lh4.googleusercontent.com/mo0pRCM0eXv7RjCfwjo3Bc9_2qrnf7RzILswbwk1lzssRp4tJrZXKvf5NKY6922gitd6u2iYhVMjm2NtyKkq3XRPrUmBeR62LdV4rS1YHWYM86vttvENApE2d1DjhkwgV_2LrrMn9iS8u7usqT9SbQuXjwPUPCuyEuWsqSzxBqHRjioJx3Qrda1blfgPFw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/Uy0uYMtJ73ZLaH_mJPElWfNJUSNNAYXYd5bl2kZYGH2u_cL_fAEOx4FVZoVhI64LKXsJvpX3Q0BpcYEmgV2GfD01KFw3nidJbxWHhXm0ybjv2bOQ2fKEcTKXy51gDQyMhHOr8sqHfHf6-4Oo6U1dWFUKXbvI3JC9scyYOhGd-qjqCD93LKXvZW0FJ5_zKA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
