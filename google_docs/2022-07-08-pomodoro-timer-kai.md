---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/oSOTA2pJXkFYM9Au7gIbBvGqs5fwvdDcW9fNHqSS08uM5sGIHT28eB4rA3PlsoxIB2HolCoy7Cx14O608rttGF8WFALWf_f3GoocWhr4X_u5jmR16yVS2ui1ZKV7o7JBGHuuKP0GJBj5TxN600dKMpbnDkpHrn68Vqje_ml4YpWXOX5DXJeRuuDOsA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/zj2Lu_TrD87brdSysAVbadIlfFHBaG8eXLE02NoCyqp6Jqqe3kSNUYUQdcSO7JtRWJfNc4gEQc3tjm6_b6ocGYwwsedXuMgywjnOiQpcgX0NPoUe-Xqauwn_Bru4yYX4Qmo5WUJVHaLsxz1cz7atyMawNrrQ1tk02ySAv7N7aSDQyRY2PvyxDW3kGQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/OgvcK450X4Iv4UlNDKS1XY0P23on00YO3A5L2o5vDUTfUgjGF_B9nTbV4afNbBsoQQrltk8OYLw0MiNXENhA6CSRUQgmHqNy82HTXcBiSEi0Pk0RvKXiv2NzH9DYnTlx6pKr2J8ECaI-JV6_JY9_hMFaUIqwEIiOalEUO5dSgYspLLRtZqcDIh3yZQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/Ljsd4iZH1clFjZcTb9o3e9Us-goXICpK1cZ5z_L99dKyPadPSUjwXI6VbuecthM1Kf7VJh3bnfhMkE7NeAPjixU2jNmWuXFZj29s1Uh_YhtDcgJSVTVafPWAuR3HawCFjQYyxLFr-TrpDeAseOXi8_I6_SEL2YKHHAZ7hzuxc1AhQHFJAeLo_7IJAg "配信画面の様子")

![](https://lh6.googleusercontent.com/XuPGDB-S65ruoWXkQylfeiaRte_uyJcwuMspcM95y1BMPMvch3OA6SkkNvXMWNyrwVdp1FDF-anNGWyzVOXWnOOkPMwnOfy0QqVo6jl2s3vk1aZp48PeHUpMHI6Wv7JDD3slKH4njhoB7zz7oxxA9PA8dAM6pHzsfJ4RyjEkvSNnGPs9k7mYlJDq-Q "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/iiy9eULIRgq3fCOKkWyX_qkdkPIzgu5CIAK8DDZe4X7Ou3bRcY6WSmvEqqLODonW5VDIEcbaxO1AK5rw2P00G29t1czNk8WnJZuMO8WpvpuRGRvHNc5PSHcouhXc3o1suwyaIbVXspdHd_qtGDyEhBOUnHkVAtvgNTrNn6CuKuypOJWT91ZsdUxZWw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
