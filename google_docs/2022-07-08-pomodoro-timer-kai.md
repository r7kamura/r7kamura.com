---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/BEYxigXb-QbS84D2QPlRYH8xhTOTHY_jNbcH-D1v6IQTupm1ho6ohR0C1j73uP2tCB0cLaxjpU9fEa1iqWjxwSm2dD-HR2MkK3Ctx-jxP-UDXlFhiFhxSbiz2LnJlyIx-udq8Dw0Q6L8dhRU7JEVDiDki1M5m3tWKTWYhcpwPx0i6XkF6OZNeOU5NQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/-e-lTQSpHQOvYYYWXuSNbBldQc30Z__ASOijuZSZx1pF8evWAk8_lhXh6WY8dircvbc6HNR9rOVGT0Rlc1aaJwz2OimGbselSklF8fxj-2EbPU7fEW4La-UO6eik0wbXN0rPrETbhBRbhpTJHN44sqah9UxYXolYVHi8upEapHY24qkgzh7eNVJRcw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/aIA8v6a0Nghmdm6Vj5-hogxbDjqTsCKNYQmbtXF9l0dXeM0XvpqHl4ysP48TbbfuU3TqB45LnREWQugVe1XrBU-xsJml4yq5_Zd4XhOAN48fep46cqG20aF_sAAoFaa7ODCVc6rVNv0wF6tEhsoLDTLBSEtRTPQiEBzjMIuHs_OB7iBqxSsgHErolw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/pUmeLnd7_kMRj6FZZDZmRMklu-FB76L2OIUR8e5qc002BWAegmYYmpp692ToYqGE62ypYys4wUs8pOToE7L0SMrd2vuB0J2C4yBWFQpcsvU8zeE3bJpsea170bel_WG6XfUgwzYr2g38LkWo4khGU7rma93DTtYsf4uU64kDYv3QH-vMwunslkpphQ "配信画面の様子")

![](https://lh6.googleusercontent.com/dnmvNrzTixr_RKMsIgdOrt2oBvdGkKoxYEt3L4gJ11OQCANMnanzCyun7YuGGxel4-11LrfRFdopyy9vDNlJYQEcQHvC0mCD3wIDCDoUux92v5cpBrDnr7e7fnxwvpMa4Yt68lJFgO5bCztXZPaTNmNsaDdqYcXE5oFLSo0DyL7qtbPE3rCVnaJD7w "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/biq57d2UWfhJn_bq0wu3XOB_4Fp-2RtnNxOqCjoT9Cpgx2ni3yrwAgoGUDJoz5YkHPN3HMOUdUTFWFVAf_FiJL6SD1d_ARMa_L_O_dP6zVV-oidRGNz1LhBJxcrgNT8nffnt2nBOSxtGQLO4RJh8-bXDbhJZb9Dg3ZasYq3D8H08Cn-5FOTZgJDPiw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
