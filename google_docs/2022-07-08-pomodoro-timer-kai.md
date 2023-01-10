---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/bhbZbSGBZM2ScWr3XVTpZ0XTd_knguuyuY320L58K2y8ygruwJRRigkoy8W8LVELYAtgntGAY2bC1C-b0Xr5d1oCWx1tfqjHWfH0_OKdC29tMo3sEWbcjai0Swf6RexDKKAphUf7g2vTMuRZx2-aENx6qgoHxXhxNOhJmU9AhABeiXCY_FWQwj5QzMRKfw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/m3NtVlGv2zhW1lFjJTKXZBj1Nws_oym3XASVWrrK0z_ciXlgbSmLyrFLx6vDPEvjQ1nhh5xFMGIYhGqvfN6KDCFDuKZJQ4uB1HUeA80A8QGcK_0TYS85g1AeMc-FGeQ7krINN9qBDwtvjMdem_ngJilvJtvHrU8uMPAxx8mHg59SM7SZIUTk0tZjm0Lu_A)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/plQfPC4Pqa0h3h_bYl0yWpX0HeDK3mabSYtsZf5XXFt7GoVpCSvIeBE3j48PZjhERU2E3JpsZmrRFqCRcbET7L6kM5AujIXg_sBTc-DCRTh0G2pDgYOaT1ujtDewaJr8Xu4ErAc84uwGWWSJY8m78TI7RuKhnWeVCR29BKWRnzhxo9SNMfznYbzRkeupmg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/qt2N-dyPh4ruihv2vy2B93rLsHYN_m0SRNg1mY0MXoOzLwf-GITzLbQW2ufXy2FWFc-uCoxcoR0fbnsxb4_dcMWBBk3IR-tNoUYd8hdehk-9POTbDgwAzTzD0-rfXBPonFlj8sf2K53JXJR-w9oYPYILfw8n49XOMFCABgeaYpq4sZzHDq8NrE_AsE9heQ "配信画面の様子")

![](https://lh5.googleusercontent.com/PVmbwoDUmFynTWXyYg0OMSfR-LCkfFegXrElAxyIjBGHRhuy5_jPs8fcDj0eDiVbtz6vUNfgb-zQJBkQ7rntJwxNMcKD8_bRPB24cJt9sbCQo5kbN8AOF2O4OjFoCdiB69Cr1EU-jgw7Y1cf0HVz4qsZOIAflYW5cU91W-2Tohvc1B4BEDEZcEOEsbcTNw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/UnL8KfT5vkGxJd3nKKsrB6059tmbDlmk-uszsCqVFh0mKVIF76ovjRq8vS23wesoOeKxJR5Ap-iWrx_9prbTYreg0sRZJVkKZeaFzfOJ0TyZ_Jw5n5fDfAjvtNGz_G5ZCL3fhaylefkhaVdP-onLIScMKx3uG9tHLaJ8s_gTJ2UNTM93OZZghbdMtGgbbQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
