---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/lF-Yqnw37NU0jfFoQpjRsoH0TQZ5Si9Fx2xQTTOY6rRIVzAzTm6Ptad7fWMOZ4ydsjCqNH6y_cYC8n4I0V-atQK-5hs1IQ0jQDafD_TT9_yq6qm_wYW7zRRAk2Dg6nfAtTnBdby1mksLgT7QDAdyVN4bTlDYvv-wvBMe0XVIZPBRI-9j2wrNzR97y9EJLA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/wXeTOXDjFaxqW03dzEjhVs4owIpJIK7nHrrWHAMKZ1giKk271qtUzYafArG_AmlEmj_huh8TSpY4-WhLtnK_Z0RtQjWfBk4PdvO3Sx8ahXlHOh5aF0NDchLtVy13lDTknevalYAol8IRM8hshuoMgJDwkNUr5mcQh9_6PjYVKrUEFlmLOV0y3LMTS3iUNg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/-jmZbfixz299KJ02La9iz8LhnneOcUIpd63zALnbB8OLA7YfRWvNaZ9Vy1m2t9ELmfEE5A4jhf5YIIzWSw4pzJgyjoeSEbrlB-i2Q2hSDEhmIH1oFImSMqnNXBLSy_aFQCnRh8wyArYljE1By5a5roSwHDO6LDcevtR2nuSpagghwGBdLLlopx-T3N8Twg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/w5sJj5XbpgvQEZDEtk2XnrDMWvDvYEU3yz-2VMwnbxXsjjxjeVI6oVrErIqS4kmFncMrTnIDQiaaKvMDJMdWVsDimfS__NcyxaVMZWB8t3prf8V2A0z-c3XJDvP9V_9DJwxoYzSCsKAXyB-h-2vWKEszcgwc2Z2jeZG0GyYsZURaKamXqUmap6NLx0RGmQ "配信画面の様子")

![](https://lh3.googleusercontent.com/y8bTVRZMAmvzaFqw5I-LiUsPYuC3-cEyALwsg5h73BHHvU7_yvLj_ZlvlvI3rHVj6exuPYIGnPXuR0E2RkhOMLe-NroBJ86Nrx8VS_iPHjADGOND57jtsjeNbOBvC8Ixc8x6tVlamflW_9q2bNbQJkSx_pBD0PeK2oN4RfIO8WBLyL-QlUfvco3h2YfQ2A "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/Ej5gJZtVRBUia93wnsGVlcMVhuPyHUyGR9nCOP5vsybvETFH5jztyOlvnPMhRiFp5nzCh3atR2O6L5KIXH2X5cmH8sGnkbPdZVTdaVL39SunNt1j-FndgwawW5n98oyL18nPXjxtV7v6IWA3hyTVJWCBfmmRp8_pt0bOUCcPZLmVI4U2WNM1HgIn4VFPag "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
