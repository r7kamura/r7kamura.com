---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/E2Z5wrDfD2q4UQP9UVVmpePlqL7be6WTfW2q5H_gQcf0O2C0SH8H9G8u_VrIBVJCBvu6Qp2a7JjWhoD0-mIVogpA8IyRDXNNGVm6bO65z5Wa24qCrm-MAfhQms9wotKsGCFC8nrexDDw0O-OVLp1IWDAUpe5zvM_wfNGXoc2OKymnDYBoCpfDhDRljR6VQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/671CU9OONe4gsbFm1bchSaWCa_GWgvEKGeEjnl4B3WF89ScxAlMXji5PNeOTeFkIojI4EgofD9zUC4CE8TZfUnTNhJm27ZVp9TeauZrXKd3jk0lo6fwFHUAeg-9-ATfDdNA5-RI5y7qFk_uIS8a1wvRYn3EN_st2ymSRYX2T_u1IGQM_DUz_VqfIZcf9RA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/GB9ZxtiuhIUmaLZGGTNaNKbuVZYzoourYytDs25_HOp2TVqlT2zoGiAgVvxEAQPAZjbz1QFnsOJHKcpKYPpMds7KyWZ7E7x2WOtj2FJPCI4kEw1Ilj_E1jzSysEp0zMyglQcZIub8y_T1CEl3RT0dRqoK3DO3tWCTV0Cb4dTCydV_d0fEl9eEa_x0joiVA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/n3iUQtcz2Z--EzxIA4dNkjje2-i2M7UCnAEaaDHgteaa6_8JKZmsDh6J-d3T7GebKEQhIEHgcnNl5quujXsLleHoxdv7qTusPtqBHD5cD7Y3L7udW8ujGwXkYL9gztsKO0ob9rdOZOrtV976Jz0ThWZwzk7-4ykYKBJLrXgnp5sB43SkNUuoJDtZaA1KtA "配信画面の様子")

![](https://lh3.googleusercontent.com/Mazxm2ZNpTWbbW5QDAleZFALcm6OKoY47OX5c3b63gqz6m1q78npx20wE-wBq90uzkUPelIVpWvtu_kHMi8qP5J_lY2b5E4Swrpp4gZRUv69jTGC729rTZcizg2OA6ErS4rko99q8bAWte5KQsyWSmjQl4ioA86fQvCKl1HMS08crPFfRuh5sYZjLEQfFQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/NjrOhkWmLTwwM9W2X-uvPW-aT2ISu5tzj4BYQQ1mjbr1B8WUS1HLEb4cAtalXWNiT47jQ-YE4q2Ttdqsou9-zmgZV332WLsBr-gSC4pIR2kOj8C9q9VaB7bM4wLpzhO3AjXvRaSfJ2j18rwNeYP6rEBnLW2qBeQGDGwuZW5mm54-C1_fYjbmh3vtEHbUgQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
