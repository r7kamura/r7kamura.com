---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/blK-xkf_HfgH3ERIt4lLJsqzYCK4O4Z4knRV4AxJwmSnD3e1f0RfuZweb7ei01858Qr2nbzC-UD4yF6BKFqBgwrg6s5rJ18DLVIUlWQY_O4MjtBLOym0uxUKooMxJfgO-OqSTD0awFLyJ4YImpWZFQldIjRkSZMibZzIzC7WbmZBtT640Ktqwl5XJw "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/GWNjSRppz2FQwDvtG0OaVtt3cXwoDDw9rd8eiW81qqnepPd5ya6_VjkeoydXiqINHTsDE94KpoLwxvwzOxaSxcAbUYKqkL1uV3wWwke2VyN_alLjfSvf-K7Iyz0HkzmIIkKab7uMJbOK-4qsk4qumCK_2HPq0lCa3aei6iO79zLOGvrYseVpwHi-hQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/xxkRd_mAO_15NDEOQs5yMP8R8-SU3sIW-eYzqbcV2UsO8d29t6Luhy6D2H2z_5gCGHUw4tP2o4E7RUYos7YM_h-J8Rp-UqlakYfdPyDPom0AsTUBXgFS6zyilmTRjXX3K-0yWAs4xh4t5e6k-dU8g7k1IPVGPwktdw-jQ2sfwbWKpg50ZZ0WdrIbow)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/kN5ZRew4S-nFKR0wCzTV9EVnsBNS7lsjuDoJ9K6RS4UGIbCzPYRJnymyTWN8oYG-zwqLgtfaH-7VY-OSVhUmQoRKvhD0RVsjysxKfBYI5M14hl0jn_0hBe2IGcn_dRvHefA-krwmx1fL2JyjBdMSPewZf2xWlv6Hoekk5hjGh7Co57UP33-vtpA96g "配信画面の様子")

![](https://lh3.googleusercontent.com/Tiprll396lBIXWpOOpYW3gNVPMZJQXPNsFf1Xt5vaDz3OfHgvK96oU929UzdN4TCg5hdT1pFXNluqzStooTanM86rVqNAM80rVXUWxychrVXS6nISa0_oxYrNlX32lUecQDwiLjCODaZ3XB6FAAdg6z5D_CnBy0Jxi5bYmVfV1ZZLwXWXNlz1ks8Qw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/ODiHgg3sxjPWZh2vlKzfH5om8mDOqDFM4eeNttthNxGMKJ8drBebh1ELjamWD34-8l0iaAXEphpTDzcZOeFK6u2j6u0mLyyhrrwcer2QNrhB_EuNlTWygj961lDkn_PxIWMKn_txRC_qV7bQMF3mY06iGA_lrhqprnetoOdwe6XJ9nECpIRvuy4sNA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
