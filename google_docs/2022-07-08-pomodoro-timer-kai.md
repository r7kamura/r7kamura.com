---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/zDAxwZLMRTC2EROx0PRJhc17dHkTRjAjxA105TlGBBS-eGklPEzPOMCHgWwPsdQVmwPAcNOT11tsqRRx81TMksaqbGtR89SxF98aagtCU3WR5Eef4DWgGt3iDL4_smUv03l0GvWH2q-DSod58xzE17LzogyR4pQlUwUupCAuMFnjenCNDscQtehw5dz8qg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/cPPq_LvAoJDrtEqPAH5OtBC6QpBO96EBgohRC3XELwmltjc_44dyu4e0CLSSWoffQsQTtuYk0CMsMB4uAy_P47rwkYZoT0f5Fev9upwqua5oNmmYo3ykVFJ3UUVTafo5IcvlQY0DoDt8epEcShiT10ndYY1qHsRoMZTPD5aWK_LpNwFKTtqfnoKD5fZiDg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/WsAbgupioSEAGWij3O_ZEbHA69AY9IpeOHMd65NHxRPE1png4N0Q64eVgIiKLPhMmPBIP4A5ziTO9Uz2NXf6fSToh4ZDOcNCnAZBcedlW5Cm0ndGEoN1gksd-WEKpJLjOmsoOAxJXiPUh2MjH5gHvZifeSKyr2-kVwdxqp9xVXFvgGM5U56ScgCfyMyiHw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/jPkuKkAsl4LimWss5_uhEPispJjVcm3dPt_hMQ9VQDC43_OurEQHHB1Gy3doR_ZD9Ml5MqVBGTuaH4T49wyeKQHgNWRZTIcEQembEnbimdFEZ8x6fs8TkrebWedrnr_gbGOW5XuUU-3h6T7TdFkVU_WFUEr5JYwOC_5diuQJgCitpo9SbYdO7oLVT21z2w "配信画面の様子")

![](https://lh6.googleusercontent.com/-qtFUmDXaPNh1I1aYmYX-ZlAJrbZwRYO3c0utN5STN3juF5S15Hi4I26UtcMqianOBSBzNAr4ckQV8RaWxho03nuHDNm-eXifbPE38WiwnFW3Ediv263yXNrOGYthAu7fZoUKS-qSyWdqw6d3ZRyrqp-miGJ7sR0qRUiuSaa0O8xc_R_P1KKYxZ7xs0r5A "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/NYjJMyWrlBAkLzKps9qmKCvhpQhIWyreArcdIH24TE-liU19Jnt4lsLKbmEOOQj5pQAE_7sBp1OQMA5bHilU4X8LkTYhxjCs4Gy2HSsq1Z2z-CPsIS06zWATug-dMLZqiF_95H66_ErJ-6WoFPct3SfX3HKjVt9eCpOCaVDCucMqo16-sa_yOtZrfckm-Q "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
