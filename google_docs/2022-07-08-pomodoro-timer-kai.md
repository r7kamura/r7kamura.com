---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/p4E462nLgNyBAFt7kMz4fTTKXkesIsBchBdIN3nuTaJSoxXdNizX-FE0rEomgRx2ooJ0NYI0cmXeUWfd9JmBUkY8OPNHV0OYR1-Bfl6_1xL1k8Ow61rMjOY369QRsPU2c7_uvxlkgwNs26dkqUtwR_Oq2ruhBSag0DmIOrF4jmDJe6rC3aoPusBkdQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/YEFYu7sTbGkHuOLsLPj8nZrpirWybGDOtvXt-Z9IT0DrcdtrmHiM0UBC2xs4Tzf7AihtPimDW_Zy401N9tK_O5FSFvJ9NW5jrKPS_YijeQd7Ea2kvOCnIi2PPwEFgwqhoY4aVBCSNX7F_oaucLuQlIQyeCdOzTNveM3DEGG0O7PY3ESUDhk5Tg2-Vg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/kQU_pLXL4Lo9s6A6Uq4CmrV6tuHuUVDC-s0O2uwvK3WvARZK5TRHxQ4orp_lgJ-07ORIR-PhCQ4xSa012oWbsDsLx89AWumojlvYBFbSFsufcZiN6XSA3AaarzFh_m42ldi6NL-eNg2NFR-t5DVJX97GxAbhzLUV8oPVwpIYOKrqm2amqXfTWGVOPA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/4ED9P3s5KVqUK6Xw1jtxJPyV_5UOIzKeBo9CqwCLHgAZJGiBIkuzC594_4Gsjb85f325kXQXd9h4D8q8jgYxgGg9UjYGtid0jJKEuT8_powpHbAivY_wXuXtOaK7tJlaJIcOtFlhAzALhr-hdSc2DztL5IDlF08cg6UEG0ISpTTElSDP9DuuWHWnNg "配信画面の様子")

![](https://lh6.googleusercontent.com/XX3RtqxQWZeA1CpI2YlaKdUy-JjHQBKU_4aSoaCC6zvBWW6xMLUf2qhneFqGhvQHBV6WTlgeP0NVvuwy8RQlepzPH2IP6in06QmEPXmR0kfNNMlLO83Pi5gOVjD4h7Z2fNmcEJzthDM4oI8FPKj6YRoTP7jFrKDXMq1mGgHxFDkblBg-F7wXh0CVpQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/K9SfyMH11orYiCV0X36FDgK1ZRNeuZbevVx54UrXNm8ViUZWir6IIwrUZ68ObDVjqdbaAdR523Zi1gZSlntU2QIcqo7wgmBsU3DxO4oDbFMCdIJhQS1BGE1ZC-xCqXP0wEWHYOFBSfkhdoJSUT8-zpZXUzjm1AYTDBNGrv684fASPC5Fn44YwiqJgQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
