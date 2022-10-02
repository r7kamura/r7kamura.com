---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/aOqZFCm8pO5V099w5B6fCB0VS7D0qqYbLgLnDe7btTabawnOOdALp92z6RpEIKiFyQTzKOkf3x2_yGiVOuA8YSBRCz6bAzo-mU1roDEtsKiV9OcnM4EluzOSM76p420HK7px1Ks9xWAERw-QM1rB7m7S5vGNzobJ6nBg2yirzxdNyw8C64CnMpsaIw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/vxM09VQGDvGf1TFcCeizUJi0REngkf2ce1rNw_gDCXzuKu1ognERliFBQ6zwniSYUmCY44Hxl7Odlv9iSoYdbGoKRUl0SqenQY43aVCt46F8uNU7R9bsSwoZiqYNoG0ZnLKZ_kFmSD61XOQMDQY8pqPU7Ap5vvWLhHRx_dDLhbGv6ypC03BXpBs__w)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/bum91p_Jo89eqgEXZ28QRWtGvx74KDFjQIvShxmrRhnYlXNBBlZSDmmNdMWxM26d_leWjhDDiD3ebncj29K2t6z--J94cwnlJLluL3sF0MmcEHshJ_3hhdjY_9rzzxD3b0YRZzaar4rsVuqQqih6mHqtdkVhx9ww2T4-Vq3MTx0dwwGUJp9jCVCm9g)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/-uPHi41qDt67aqnQsZcq1Dl-_f_G3urhgs3PCaKg7yZdBJ1dKmchS09LFB1m8osA8I03aIPQLIveJPVuNUXrYkC0es3ZJAoNmkf-OkxaTQdV7mGlNyzYIOWWuNUfp0-bi4TNXmrUEiXa1awMc1U6qFmQ9dNXa6wkTjLk7iZMqE_5ML8Po7dSc4tmAg "配信画面の様子")

![](https://lh3.googleusercontent.com/A9dMqXA241EnjHJVfZS26txcnNzjm-k85fDhv6G3D_pYJpZdq-VAnddL00hzoV1DlvaA4oQI3wh4mrTdziL6yEA-b3G-q89x9cw-nNRBBp_4gW2Ntzya6MWPIRisWDBW4T2Gsxjh7Rr7fKazECoHVOZcH8djWS5e-Py9QzD7-DGuk35T95cFGDtisg "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/EvgNf5ZwpH-p2ToR7F6eU7R_X-fqVY7_cOdBQtAhLlAW7wGw5gKofW2TRcC0Ryxn5mrv7oO5qwKxgyyX5R7k95Z0QQyBd0NUslI2_kc0Ie6eRmvs6qSoqQ6zUl1VP27EThj2a0Reb8-riZU6pVF1JC1qpWr7x7TFk4wcYEoW3ejPAXA3M_PaYHc89A "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
