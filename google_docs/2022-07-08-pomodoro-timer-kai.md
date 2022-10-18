---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/xJAFD1LW2yw5sFMNNbS8KGIunQpHgMS_Nx15ZNpxgTlgIoauqUG4xKVEbq_yHvCvdHgPXqk7XAUaHtGo4qrpa9W3dDuzvxty3GgWhgB5B11KaURj8NDeNK_9EAreLgm4XFnVyMvfsyFumzwkPI_D-pnREL-YXNMwBxTzzrvUcaWROYfTXhl3G0Sutg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/6n17OS8yDyYvEm0_IrTkX3lfQVNS3ij10xg1GQTQMz1BHcR2U1awU0WrUOQTU_3ZlIVWcnbbJprSuBjNFTrUIQdmveYopVpxFMgNlz0UgRciOBQNha9iw85rgiGw35a1Ul-kyfx4dHByZxnE9HEVAGx3f0FSKpmJUMwBm2i22FpI8ie9_34RhWCU1w)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/MqJTik3hUdiqsAxNquBBeu__vtRCa0xIcJ1_1R90ovU72EnwqD9_1taGkV-0w7Qf8sksYAjjHF-RpR3tAd6mnRiN2egXe79sBlcNieockpO_AewRb6EyFupOXU7dYkejOY3QLC67F6wKYgzR4pwo5oXVGgzVgtp-lbRzjguFGvQfnpVXK1Omo4NBMA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/AGVTe3BtSlIuuA_a4CIvRLItr4c5Uo0aOkEx0cyvLVBli5yK0GWD7cJms33MPUtXZ8CzEJTghi8YCoaDXtDCUUBqogpqwiiffeXzfkuAnCr4x67JK7Y6xeQ41_jpapFl3obu8C3daUsOcXbML3BTwUverDQAadVaVbq79SiEZAMI3ulUYnDhEFx45A "配信画面の様子")

![](https://lh6.googleusercontent.com/mhzyTJtzExXIA7QQwV5IcGxzrCept4tKwo01XD0xnjmX3otu5f4GSf0g32--rIyMj65h2Ok5yzCLmG6nNG0UTahmZ_RkSxP0YboPU5bTy_7JnuXOcssg58FGlWm0PlSsKVVFETwhu30y0z1TIrMV8mesupgjWqwgkLQUR44ThbFXwngop5AfYw7zwA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/Sg-1Vf3tHGkwFRU8i4oPbkuYTZZP0RA4ivbvUSW_DhlLh5zr0aqt2rpFRnz8gV6g67CyjPcpkoceAF78LnWVq-Q2CPVjpDYWBrvId6JKOZsecieEp4km4DW45TxXY2LwpKfom6JHel5HT9lZlNC3K_UEmcvfn0PL1V7VCKqoP4ZzWocjM4t-XWwpLw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
