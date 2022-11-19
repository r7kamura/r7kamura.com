---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/NGwaJPj0clkNvDeYNKkMwiPRMVrwm7cp7TAt5x8EoBWI9_ORKBVtuaEtWs7-t8JQEgRPl7BOh9OuSvoj1EOSeKrXCP0-ISE8IxjDx8Jqed1euDLSv_IuX3I4KuSIvQYRFPputGA4l2UyImN3zkmkGvLtvNyrg7Ifm4lmEVwF--e_ULTHOrpgApflFBMgtQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/sZgK9AF_85dKRPOWYDXwFFaeA64aKkSMh3yoHJzb3wG_WoPmAWo446Toaq5J79kgCRQMtI4eRtPi6hmGZqcKKS8IY5HKSRsOPBVmt-wJsIouxN4dJwXrETfaa7pCcd05D2e-uMJIsTqlcA3E5cjCArT6F0QsVNZduoySmaPNA597AynT1tthw8Pay9A6Cg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/qnf5WAFsja9Ic9bKulRft91vWyPggfjVZiYkXhZzkTBs5MUdGqa-g9UzUGJrW_JCSD1wGXK8dHkVS4zSry2NKZqmlCvJinxEIBuJ_BhPI3w77V-I_HKyasY87SJrdTD02BhMWS7U5wotXv8p52Qtp_0Q9NWB88YKFep2GO4wl474oxW7_NlFu8kCxA_3UA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/EjckVL0wK8waafNk38rQRiZCa8_UgO0ZoITrFLzQ5URxLCmGpsyM_8xrPOQxoUJA1o2zcHg8kPQm0tQU00bHnS-nwb-MFWat1wBXcJLXcDIEEaFM0CKX84g1NbfVFq9Fs4SpqRliy6iSJtFQiFRpWBgXBs2IEwA4CFw2NMRynqvLjpS51T5OdWxNPIuRKQ "配信画面の様子")

![](https://lh4.googleusercontent.com/5zNFYLRL-_sUZBtYBtuDAZrlH3yItEBAi6IEydx99Erv4-MK9OC19oEmB_UTyqPh2GqaT6Xfx7KklcDgSt41wJNS_ucM-MpfUtCss7TGczxXMoWTJYLCFBcaoYs6nBbSdDrumcgB5h_VpAG-djdcAO_GuuS7NazfP52HMlxVPTxe5LI8fPxlGmS8rSrxAA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/WAMuOmAgxu9w1wEsA_gspiWhm6cvMiUBLJDxns1AbftFjLqCh60XXsGeoX4yt-UV7pQV1ETtKEZR4utmbuobKEMpQSRANNKSpVoh89-iK9L1Zb4EcccdMan26ggyp5vKJKPlnGFfOXbwHAqwthW_7-t_21hzGktGZRXr8ZFYXceYF3pvQLHYkAh7MykzFQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
