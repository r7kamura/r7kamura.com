---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/-sIW5Y5__niujX8mchqre0BvH4snqbPk2HJcW3xcAV6aEH3_qKVyCHC4BZI3Veikdk8ePHREBqE1Kplcpnwlawgi6SxUGk7oZfxJpQP2tVt-sUc7k_lG_F_5nyGYi2GAR49eKZUxcei3HHvThnN3RpYrndyhUAz-vmoSF5pyJDm4g1G7gLb14uqWtQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/tiVf4aQLw1A1X76hwI9IAVIhP5Hr6COoxPre_WEOA3IqnSqv9RKjTewVjpX1z7-_pDo-Vg2R3XHAP4yrO3vfXILTu8zVgmhan2rwWtRuLPUBu2el0xLcJhPulzPEYmq3NvNlb1SqvcOa8jxBbVvNVhvAKTk7IYSz6ZuXPdvumXN_Rgr6AInuHC0uKw)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/iefnZYEfM1rL4zImaI9UcnTHBJ9rz3y8IFCq0qM9ljJ4kF2DtAacSOY7SzO9ixxlDfrhrM17teE_HSvV5Rrh_n-d87cwfFs2_S-JOiGDXe2zBVIfSU9OhL_GAuuAIKQggzx5BJ7ue2G8FtE_AvpogW9mcZkDods4U6iDFfMekTakfD7a1KsyXptfPg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/_-jtV2WGILfTB16XFHROJFhYCwDFlzZ6jw_2OormSLFCdxgxappx2g0s-K1HlGOoAafrZQQSgzvgRYyFlNJDctYxiI9Ms90RqzFl5GKe__oNjo-eIHZM6I_tqQbxVl1RnqwpaQaMqgB2dG2QxoJAUboZjFyfhFDCpXpApR2fpBNe_w9gcl7uSxaodA "配信画面の様子")

![](https://lh4.googleusercontent.com/hYI6FdifQfVtR39BopSmrc4urZm39k92MhTc7j6uYoRvmZq-kQKRK4sJh0V8Iw060tRxo6I7nd5Lb_HDlW7VuI7Ns08MYTvReYEB9j8jbNiyTj51JqG0cv27wcvLYA--gtG0nv-W-I9MzH4Bg2AwKt_tLY34S_dpXjhekGkWc2neORjRJF7ay6-vEA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/dHgPZf65Ow-ge1Ur4nFRJHV8ewzYTIkFvQMa9T4Kvq-QFvkp2Uc9tPPvoeIZWiSHbNqCLrtTfiYGquzln994jgCgdj3n720rX8jzVLsgrll6IngOAdEa-BM0mTtl5P9XZmIaKXGGesTT91sAeHuqh60285M77OMUR5qA4EBeKE4pdZ4rYEEgROVrJw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
