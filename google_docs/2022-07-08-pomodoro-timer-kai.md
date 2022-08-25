---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/klFXcCQSOgF7It5LX0ozg7b7rYlzoChODB7GkHyZBCe5L77R4k2Vpu6tIn0YZYuy6Yk4watUnlieXwY14Xs_XyFN_dbQA_gbI2JVmgmzARB0RUPPqlkLRzHVGYNG2d_MffxNH8fO-pOAVCZHliE2qV1RNhpX-31SpShDA8ZmFZIuio3h0eQOwKRLgA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/3p2oXSq2slPeNO2TyhlnI0c9kQFuYaSP1XDFn0LzwE709gXqjoqj41yuaallsCh0UcBvxO4jZY1UHiRo2N5cX6xeWZAwr4XQ_6rgC8PgDofwjVHLkhRmLf4Hot1XBm9IV64J74i9Gg2d4EjH3v_6jhoBJu4N7fiRxSHOT5xT6dZOzsqDZ_VkHpSHdA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/seqfMi1iuBlZuM_yI_HhosK1np27yIgy2cf5CNwkitV-xT6yDORQY0ukTLTqXRCwmNdj1necJkKssp3k_IMb8dSmrbRSq2ujX3DtRkvcMLNUrz5aGtDqzSaJ_25OsmydBu3vH-2brHJMoGL6KNXtJsvUnw6ELQk8rt34er01ii10Rug4iGqewpJFrw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/hSDoUqGY50VBUDwk6gY7e6HjDvtjmGq5YcxvklyGvHZIkobjC0IUUQuJK6E_V8Y6YLHgZWh69oCWGjj63vA_t-yQVLeYMJMBeBc0iSAhuRD9r6-YsbdQo55wyuZuVGcS4z4uIg1jcIooT0Y9RsFezmJi20zpfb69Ke02yWLJnobc8jscCH91XO1f5g "配信画面の様子")

![](https://lh6.googleusercontent.com/J1hfQV6bkb_w4RG8CbxLK5J4EoIxvc6QYg78egbqcj0XhU77Qyf-a2NGzLdodCHZxIRPgedUr6yz64GlqKCb_QeLfoH1KteiiKscqrLjkfMDlCMcHcRaiCisczcCxdqPUWtoK1fT5codxKshpyLxmIPu7KWtgrTJEv37IJi46Gv0bIAQkBgIOactaw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/8CM05XWjkYcG0B33A6XHwKSwTRCuKNbRgohU6dlBiMBY23qm4OpoAl-7tL7MgTXnZ23eidVF7rhHG7YEviysNHNTtMTw4eTNU-7M_zQA0CZZh_G6Mwt0ciYCIDZqqRV_DS9GIokMgC4jOf5lyXwh5V5whJdEkTGPSA6Ys1ECOX-kN7JU577NKta8jQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
