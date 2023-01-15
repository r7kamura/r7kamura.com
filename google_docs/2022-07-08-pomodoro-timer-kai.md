---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/EkkushGKCMt9yzJUtuPf4bI4D7cxE2fR1g-8h5NeVlZMPmfIK8yGqBjaUzlS4jAmUKaDi3CI14YtQBEJD77mTJ15UyEi6IC6tFRrQGlwmiqpWncCdmUeR5UReUfRXY3g7-xAgHyUuXRK1PiqdQIvnOYr7nrq8Nxe3aElg5bAYa0HU8Cf1-lo-nWu91zfNg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/GX30VUNLHY1rTa3xmXCOCmI1jeVR4M3clxqjG9RWKopXRUvd24DN7g6h5sW6mGRXYv_ehOkxFbfybho5ptaThXQLIBFyIKibI3b_wcr6YdWLUfM5JHrqA-yC7WVjO9I5vN4EJLp3WTidFj_va6EENfesY6ThQhdaUZ5zMGalqYDEjZ5B01ZFTF_jSQka0g)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/89gu2oQT9IDB4feO4V4U69H7kusijHw9xkHKn2X1mIxP3_x4i3b4i0Kz_LWJLj_dgZESTiPd8A_DSPboCHxrJhMVk7GKCLh-t0H0YapgqKCWxvViBMReawtnSdMF2Y_ip-FA8GXdCs4VxTL-nqPRJxb5NECLhbvd61hK2dyadJMfIIQG6LvUZBYq-ImC1A)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/W3B0WGfojDhVv-gVG4fpXn-iba4XAPpMMApozCexyY8difH5AhRyb5seYqE33FRykAuT-JYtYE6SZZPu7LaCCv2hrxmRGgEBjFM_YxM6Ud2W-97pNlR1vGc1p7BWd32PkNGnY4ip3IwNGKzSw23VxCBfvd-DkEzQNN_prarxINoNK88e-EYV9jupgZUptw "配信画面の様子")

![](https://lh6.googleusercontent.com/i2L_2UgeCGvPJvU3d8zX4YTRFvs01rH9jjqapJpIE7UwAdCRGwU6lofqglC6SDt2hmNkHxgUcssXigwUv6CCyS0EE1bkeHQM1fTu4vDoBbf32Gz9Pl460Lx8oNGO-r9LGB2vCBMlibF4uKGUFogZG4a2EyT6NIEWk_VnTzXaZ1o3iDbgauUdQeBE326n-w "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/0UYACweSYf4eGPl-j00XwktpPys510oYgX97u2VSnJ3uXRHchPrlkBjpnMejrdhfD41XgxvF2UNNuKoomH_Ijp-AxsEdRo4UK8g9w9CJlYj0R7QCfMVoPYSlXO0PTFrRZK55oTAbQ3KNc1CeVO5iVaOZyXP_khPozFOrVgNw3h2uQMah2PIoqzDgb9ifRQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
