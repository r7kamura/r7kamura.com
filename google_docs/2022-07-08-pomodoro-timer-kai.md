---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/tCBChQfxgAxzyyG5gjoBd1f5CuI7UQGn3JbzegDMG426JZwg8O1mOZcdlASg4SXimvSCcsMWBRjk3gRm5sFGYs-SCEBneObEcsxvY-P96KknN-mFHRWCHoRf8o6oI_Eb-HUWQQJ_3vmbx92AG9w80jFxAWuLpO1GmCb65PksuN579Wip1P9s7Nb6MPpz3g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/0XRYBT4gr3fDFHozjum4xKqyPEH24jfe9xWkKn9Jq5YKQGl2m6-tVd-a_qssOT46KUhLfUEwga3vrA8EQgzj7Etvb5u4JbNGw3xFDeynX3T0RWmP7IV1tQc-P1un1Y7JOy9Evvu7qOSSmcVgFgZ0IfWd3BfUaIXl60NyG7EXfz7COFmTdlT1nngCsDlFpg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/rjw1TBnDUq6c4EeM5gzUZvHkEsgCTI56iYX2OHkepC-aR6cHdFJJM1YZRpRHlcrA_XBUJ-D_aA-oXLE_dLBd3QWsml6W6SyfkfbjlTNvXDhCNmBRQc45bmq4XUKcmvbfHkObUS2a2JYYkdWUny7jv_-DO5bROzb8asf0kANg6kuiU3--0ZfL0SqR9zpshA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/WEFsTdsdfBj-3ieyzaIgKiUHdhcpDv8SJI3902AVyxjH_cMDMtCIAKpJ-jCBHAMy25vDt4l-_4_QEVzqxAvpxPIS5b_6VLW7bdPqraCMdynmZLAJGDLYhnakm6nwtrlSbxCc54DLdWHbHQcFoN7-XwAP65BpJ4x624oy-mtJ-tkrtxMZXPH4u7no-peAwA "配信画面の様子")

![](https://lh6.googleusercontent.com/D4R4ZYnITJFMJqDG9z0R5N55Rnai50UgIrXrrFleto47a8ENhAhYAsEaWdvnE6wLElwuxn35qcjt7ujfiwu9BzVPAmniq5iEcUtIKSozUAlM3nRyGDf4dnwjqIPO1xnfGID4RloRZs71iQwMqARBXdXM2GoDRYIsCscP5sAQBNhMbghvk_k3X7IAmAgcJQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/7G2Rw-g3uEBvgkMS3oLPc-zzpJGCt6XpoUbe5OWDC2r1xHGYjT7AtnTk3-C56IyneijUq8SKPhHagxP-GBlwVB4Ieol2crptwjrrcrWiDol6IEW99o5iT__FfYblqPMLYnDxuAHPDyHLSmfadC3wlnxPFVOlG8aX9UQsWu90vuGxGsAxrSo1eNgB11LNJQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
