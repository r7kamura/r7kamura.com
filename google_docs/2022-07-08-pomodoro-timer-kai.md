---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/mHKoTZyCrPzOwU9RzqlSU9I4gBBA_oh54ZPRsZhamBTmV7dmJ5cabrp7ZAQ5u6qwJto6BjUjHNEr08tR8OXnMr1cYDrhIbzN7nYw-8jCGY3ORYpXAI12UaOFGMbf_ofsFpLXjBbyc3ZFcgIuTqm73QHLAUvCdIpOtRuAHqb6c0IVN2omCUPIMJNZO8dKXg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/amaLAgrF1XHA0kqnx-v4O5pi79fTS9RFkyytrnokRhiOPvipIfk471FO2RfwHhmeaCPtA2g5OLffxMCSuWw08jbniDfzlas3Tq9HwXAiSrfuIa1SKk-lzOTcOcipgiLogAb_FUNGcUGI2Xrf_yTuNIPVO5DRKkAhWMzvZV7-HHk3-7M2SuGMwqswQsCgdA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/IVR6IDfgmXd1KVx8XI2BR-RsfA_BNLYso3RRxpMci0_rC5oivw_pKSMAyCMRe--b2Is93mfr9Rn_aOA48rPwM2k2yFbKx9DAxrEup8bBEqX5F11cN3L9EPywx_R4i4puoRoPWu05l04OJuosgzkPUULZdRTFG3s_Lv_JnZGxTQ9V462_z-BB42WfAPwmGw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/mgUEOxzv_weFrGXPaRXrwGUZNaNplDc_qGnTRPcSqpDwWlZ2rrj6MEBs13sVHnZL53tNxL1ZjjAgQ1G06I-R6x04BmmfTMfm-8VARUFEH2IdjjDVU8eJx0dVxrLnuBiOX2nRZOdvl1723N75YCcFP15jEraXZKgWdYjDtPoTrNaDeq-rIdt5lynYZeDOpQ "配信画面の様子")

![](https://lh4.googleusercontent.com/MQN_NbzupMn48vI2fgvBjs5MBnzPhfUzWraUymtSqbq8X4BfV38vzhHaI-YpqpJVyRufugU_UCiyk7TUPVN80-7tIr8CU5K6AeXAIEFox2dNLL6eBz_zfgF8Yolq0q2CaLpxDDlD1eHpm8kXnVGqa2RHW2pVRSgEIiiQpVlBWxE9L4W09afSqeFD7ZMJPg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/AvNYBkV8y543t35U_H4fcZrVVrES4s69LVQ2xrRRHwtJz41WMN_zb4X45aBywmKoqkYJoFPiKMRn9mXhX0fL9KkGhxDkG3WD0CQHDxyF6Nqg8Y3L6W7FmCjMkqI4TRmaugWTmlxm3wn2ThxhGVxGXWVTvy9lDRxU6qPFsGb8YB2eLlxh6CjRnAtx3_-Vfw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
