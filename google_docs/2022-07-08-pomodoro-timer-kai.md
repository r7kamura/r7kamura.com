---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/19XFhPB10RinzbRYc1Y0LikF6_QrB2Y1RC-2gY9BHxtiI_tMp_3R5n0gmoqbKjVtdNhMo9BxeTJB6yfAdpfI0ikPjQMMJOAxhJ4o2SwzZXsAQcaviyXr7aBH9Vy5Is3Jn0okR2wAvi9CJypv20qPtF1JWHaVxOEl8AqetCTYBW5K6l7coSFRJ0NeyyVogA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/ZDaxuAt3aoJRO8muIsD1glLKPac82KJ_TdCY02x9EgDOKxWeUd3bejqMiGhxVGTRtcXfVEsmCchLsSY49-9WDQI8fN5Fa3DAF-qhKgCUlKne2kFWU0s_iL6At_hwTFr0OOrTSe76rzwyMlZXUGq-mmIflwWYfXivw4ywdzsddDvpZbWJNIzR6LaZrnrbDQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/938yN9YBYCpNGZyv88EXWruWlgGdIjV9_VdWe43YKwU1F1vLjEF0YR8XvI7NFDMZDeZbUAo4S78vNXOthq26djkG9IEuJigVBOvQHjHN0ly2qxA5KQ28XeQZtME2522kp4UjbB2zYwSDBNheHKN0sDZIo1GMflsuWPa5CE1ioqe1-pHHh5yXlwIolE2GVg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/y28Ty8L8CGe5bHB_vcHtkjnaXf-ZKf51TNDUj-Vkmwpx9NlgRrp6XE_BMR2GXIXTyoEKtjcx-j7K0nYJWe5gjglHXFiIJbE8-eIT51hBN_xY-LmTDnjM4X5VBY60lKliazNKx0evrPxiAgokZcPNOJLAj-hFaBr0isD_CQsW2lJKrogSZl-Q3eWNHHKumQ "配信画面の様子")

![](https://lh5.googleusercontent.com/xzFdWctQL2a3o9qxkaf4m84zrPWBEGG_zTuPH7RlZdpN5TOjvY5MMjQ-jp9BcJ_qSJtDwL6oe4yerRHA3ewVDiar87GUKRa5AB0NkTFLwPParg0Kc4KSm5LtH-OiGkKjZ4VAFvCIo51KfBt-hCLJCa4XrPvDEqtWFU5_aeDYMAsz3KlvkxrSzXbz2Gd-fQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/YTiZ2CBfP04GpyFkdWEjOKmfrILoKrrLo-yZJn6kvmYNuJWig0SrS8-Tr2KPCIss9VbyhWiFk2dNgnnh_hsklkPAd5j4GsVFf6NMptxSgJS_BfEjH8QLLnN_FI38hjwBTWNSRuO7Qc_C_bR-MnoQ_5isPZoBSyy_giW02Xkb7yKkOAEsX-ckAmeqH1bAGA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
