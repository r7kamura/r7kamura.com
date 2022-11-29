---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/V8mGboQ6-L60r0-1PK_jJ35J7mUtDGPlp37lP_2q-g2MGZi1nNDWMmsFIQcoLIBICT9cN2iDs7qSOiiMJwZ8bP8S7_Nn5sbszc6EZGDM1OFyXn0CbFFI3tEy5g0o1E8gm5QPJBvTLJdxk0r8DDWKWPjXe7hUK33Y0TCRxG26XMISzdpzusNXcxrjirLVAA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/-sQYHu2NrkI1eAJAKweQxOZLXyOtob3mv5I8sHiGp-WiIEYGVP0DKXFKYDhGCGGAOYw25qnfq9jVU1IM2fuY3_rkhQ93rsakgYsEOnA_ZgSPyedqHN5c7x-C3uD8Cwqr8ypBpuia6PGLrMS9qWdwC8EnHupbgyU-O9VrJJlgCyXb_lmRq8oXU_dsWRICog)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/pZTsZckm4g7Ra0mtLFZsrFanbf-418xofUfDCTgDQ3KMTqm3Hl7okAFeCRaLfSCRl_yPgJ-1pVDVqKeNLJBRz-KIDANyMECOXvhOUuTb03B8llBqPl_1LxO4COsSUxsvFq-RRI7SInn20KJRKi6pyV55HCFv5skMxap9eRg1mPSzUaJbhbmeH6yobFhqoQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/ho2iea9paGjKw9RaRnC2dNKWwCsC5Yry7lgH2ucgV8Nx3rfufF43xVl4IrHXyzVLg8p_CB38GVS1f6Sdo8zTCUJrm4gXQtNbB74m_KZfHDch19WqWVxoBZXyPUJFndmxVPJNG43qp3xOq1TBk-BFYyKdO6deLOA1mmkg10jodv3mzB9ASXAQ_aRKy01JZw "配信画面の様子")

![](https://lh4.googleusercontent.com/5tp_5zDCriqRx--NXjDdIXdNZpa-2LFItOCES6y2psz43_NgxpfDh2Hzj2c0f8SniR-tsMPn_PTOF_PhwAgfzxnRhstYaIukKrnP9amwztEMCROWNx9fwlWMQFwOxvulkEfP6NgO12JulH01q6IIOJa4WqmJ66Rl5uZMTRCUut9RQqL849MxieYF4Ad9FQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/erjqgwZ1_9xYjyQzPwEZriG_LiTJ6_GUH3MsYL1m7wX2biRdIhjlpgk7RuVpsnd0dvpNM3rkBJlrU2h9fZqTv9UL1di5VNoVWCaKNiVZbKWNjSxXajmR4deoRN2beV4AP6FkuirWhwtbc0HuXssNoQI3t6jIJNT9l9OHRILIrfFoKsimNVyW8xNVYkOigA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
