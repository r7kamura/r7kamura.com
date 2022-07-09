---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/6SM1TBTJ9TsmIIjx_J6lj9oXEr1oe7OO5UzjVzsJw5XEf0N90Ug1Fwg95AbvqzV-DP2PWudfEkEEEmB65wwzsyHBgUz-_XyPBgYMzyl6PsEK6J_QTPl-yJ-gvXb8eMg_O6y7aVD_FPOr2OY9hY4 "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/4VzonOB-YQutpGWt2lbqpvx3m7ALihThYA-zSPeLJrifM8NPQ-zVYH1JVsb5hwH1zCf6vEu5JlFn3RtOf8KFr-J33OeoV8KLJJcdJTyfdHmhtZHSA4S6awwZPMS8lh4F3_zOWBBU6DMrSr8ElA0)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/OBSxQS5MSr5apA_uBfqlveuiM-XPcr4-mfW7_DQIuya-uuJPNcIJDSYTbHUPKuhSVb3aQlQlfE8I7CUjNfvuEm_XXbK0Gzj9gR3cYDEXBDbwOGmfx37KG7w6N6VlbYkA5UnyE2cL_oyqj0q9its)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/_l4U2R91WhuPSq4NyppAbtQPybbx8UQzlUz-O0l5jAI5FdFUTDevr_kpfeTbohQg4FqzZC9zq3O7OY1oij4Xw1rXUMtyiPP5jw3EhTvUkzipp8Sv859UywqBJj5aDnXwM38VtvLt8CdPONZP8H4 "配信画面の様子")

![](https://lh3.googleusercontent.com/6S2eHxUC810MuYVhkGp8fEqgfiD71fY8bKHRRTMhtMJfPXV-iygxlQRbAoG9ABHKcqyBhqFFCUMldNsl6DX6J7o0ICeTdmQ785Of4sh0fhiFnPm-_3naWJwPubwJjRmPAs-xLaPK4hGL60i5Kbk "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/K8k2E9PbcsdxglX4e3aeVglnvyX0TBcPhEG_xoL00MBKMXQWyji4AdTh-kzN6bCwF7wL9PLMoCbi0T_4LP_ot-FMknjmPVnw0mbB-lsBIFhntBP8K8LaT1lHQ1gh0UaV3LNT1Y8sB_M9rM1rqUc "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
