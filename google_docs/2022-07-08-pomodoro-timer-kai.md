---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/D6tsVgyy2CbOUFnK5xiwo-FBOyc4UqsymaicyET7Hb7z3RcAFSqCVwB1FXPtfWDhCyRu-4C4Xz4ZKt7GuwlvZkba6vYGApiRsTumYI__9Vz8uBIlGc7RTMohNhM04ZT2sjwSfo4PnM4UDS966AYx5gs "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/7LfAvJ8-IQi5fOwIcNqiiIgEdVxwoTPm2ZlUom-YYFD-7O5kcpM05erkWpenCnG7hgSpGmjlwHmoUgm2FV4JC-DcQYsXhHEO48xYWHzZNBAfi3oPDBLEpfKDCH4wyxbfdg-B0te_2pzSK_BLuZoYL_0)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/uhbBwrZ6B1RDl3DhkznA_Mxf-Ez1CmtqorxMV09Vn6XPiTNpPjV0x0J75NWoJEw3TFgHX4869ePqoEOkOwAaf35lqbp1SVf_5qNdiC2KfNl8sNI9cl1bF-w3BytbK_OLgGxn4urO1tp0_rOujmSHdNM)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/QqmY3QX9-tjb4B-YNApBFoAscfia1x_k0B67aTl97MQQaiuA1akdsJsAf8FgQk0KR6kJI5BYpgdkBqdUw_6PfqWi5nelIAyoGzRhmxbQBt-NGPa2-k4Q6qvOx8PiF4U6MgNeUFzfqc5KM1Sl8QV9B0o "配信画面の様子")

![](https://lh5.googleusercontent.com/bu1zvuh6jsgPu1FMYpNZWjQyH_ZQkescuWt1ezzM-63yPqDhcjJpyAYt0L1506SakQDTaAP0Af0_ok15xdQc6omx-aCucVBSxRYPo9s-QuXC23R-HQcbF2zo_sSigr87p5TuGbwG6WGxsciucLeO7uc "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/fXRMwpa7nZwplry2aqQhmGQFAGoqcctl9sVwvdHALy1GXXvAP9R0zlqCjvCfhl2IoEBm0OEYdFMc8m-vt_0m2CGyr1tvpb4-WpfqZTWVvoTdnscB3KEj2uxSUjgPYc8RTxowmClfzcM3pUJuT4fSNp0 "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
