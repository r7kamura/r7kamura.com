---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/jZnhaLjWgHnpjgv73E2gQSPTz4YVEIOWIArwnAF7o_OgavMtdqzijq93TuEFu1_0o1eQrVxiD5dRWE5hpfdb8Tf83m8OZseXVBUycgyZEWYrBA1p2YB96ZYpXGfsbFHG3GQP5iy_bpM9CCkitlBZSvY "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/ZqJnED7ZXbmnut902s9AXCOQz4ZpvD7KW6Y4C_dMeGXcFSYprm1qhMVTbl7LnB5nHtj0PoYV3ofFIz3Gw9awXb3HXiPMzms8xsIeXkv22AFjI2U7isupCpVnL7_QMoytxHHAZKivtmLFV-i8yCeXUAA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/yywJMDrW25EaLO0TKS6MjknLQw3XnApCIpbNO0TYchQvzEbim4aRt0RsLn9k5Hsq7KU78qoU9ZQ6R5mlTQepJBG9CwK19vsBjnkWMHunuBKywLLMMCL3Tbz2WqqZ9s-Bz_ee6OYcnLIh5rkc6_cnc3A)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/J96NwluE6gGqCdT60I2wgJmkA3_v4x_q5PMCpi0QmMPdBtKW9Vp-dh7xNhb4H9MFG_NGh38IR6ZSxj2t26mPL06fvdB01vg8EmZc0_h6KbSJNqOtf3ZohPjyw8LxyDv0k3VebIFuZ4LQwlIPBmoUEos "配信画面の様子")

![](https://lh5.googleusercontent.com/_0I6GkM79q3HKpyu4Vf7mF37kXG7Z7Eyp6hR2Pn4UzHGRQzeLgc391ehONPRnvW3g0sdA-gLRcfhL-pX2R6ZQfTIQMzqzzUc_GMEjFQCmSGeCfTSJU6fFpM1Obq8cqCr4HGfkWN3FsoaOWY3p5bBUAE "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/iPGXE_oNJTsqehuRFqMLpJB0KDoW1h1C2i_r1h2FcYMipQPFAkITgdyTggII25iT5Ye2AFUzpwAPfl9ZzXLPE9MAxPcOVU40Nmn4dOY2R8j70JppZK8GLhheVzVsycGUX94jZ6t3I272v3ADL5EEI7M "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
