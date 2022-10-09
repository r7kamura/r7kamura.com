---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/cAWcQkr7EoQCGXu5RyBtuU2cPyjXb-gjtK5mHRMGhUG8WMttHEqwbvsBQAgsb4cZkTbZbzKJkpgBkCN_EC5KJZoja6jlpsOx--9AiSd9GzVce-zsx_ux58DxxrjiJJLr-miJeWwJJoAKHGKSKd3jNWdq6Yfx67v0mOekZGAqvHJPHVqpXmDj7HqAgQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/pQTcejUz-mqd4YsBjVagKBINyGrioKLQOnCrf_I7jR2o8ZSltzhV3eKtaU8EDn4VXL1yMJSEV4T8dy5qwf2vt6nutNdx1j5-gPDQ_KjN1wdMbWH438A4j5rYy0qePcBpAQ1oAj8lsMCOw8JoPQWmvHi9D03rFXyHAKVyKtI4fhrMbLVxhn_hpT44mA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/QJeWQiD8gN8rkAMjEq6_83pTr-ebqrgrhbVGtvJA2y86kQ8DkEwUuSGr_-xWHdIm4J3W5wrQJVr7r9MujIZOzmuXVodoojr5jLa_--MGx8X2x5Lp8NI1q-usZpFFhvSsIYPNY8iMVp-m_oNsT68qbDoqqTvn-aQmbvjzONn9ctnmrztx8dYydXEDWw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/f9wC8yWJIpMMTpEvhYiVLNikCOxTIhB9mBj7PcARCtspn9efCPQBe4_z6FZlX00G8BV0E8_TyhOWT1q_1ylkQ1mouBB8FbD0XT-e_Sv7W5fjgMnq9Oi4Qp2G4ZtvzKs2aSjUd0GJnYfU0VHeK1xhenZiNT_Hz0v2MdmqA1x347J7tKeZjfFuOVPIzQ "配信画面の様子")

![](https://lh4.googleusercontent.com/cfZTRJ9EngX6tUZRsyGDtxkRIKxQiIJbeuo1hSL27oBlcsx4Jc3uL1mEFivGPJPqR1mlgRwMs7fsyYyoO4620FAiKX5uFFwZgXeb90IWPWKmwb2Y5Om3nJQZgeIWpJXueFPVcNDOyYwNOPDlQx5hpot9R3GwIh-pSiX9Fa7L0obDf7VDkSIQi35H1A "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/Fhq5BGGHuUWa3j6YPPz5llBVRpbXa5EnlIo2a8wS4PoARtCiVK5NQXfTxZV5GgL0ry-yqgy0LgiVG_UBqc_qm4QSC4ExSeePVfQ4HJaSIL2bVO8oa9a_GxuhCt-2iz95TgdcVrrtrs320uGQz-gOjjyvGtBb57NexRKwn94hBg0GMIjUtV02WvMasA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
