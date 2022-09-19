---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/cdk-L9DRjgNDDOU1aGR0oMiF_be9uSVEOxFTbQitt1UtsUy8Gbai3qWL_gzpah8YAQc68DVunLiapT1HbgnqCBRaLR9LbpdjK3rAFjNtg0CaiDAQjLXdgkrpEb-BReh6U7pYSa41LA1j0fi3yqB3pv_oK6UVzdkXCGCoditpm0Hhzm1sAAYGypNk9w "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/dT00c5QpFic-EUJaRcibzyc9jceheIQ2cm1Y662LxORk1I_4jQD5ZXjXu86vEUoCqUaw2QAWTbHaUDJNzoR4Q3yfRIFcS63Sltbt7B3LUk7OzK5ueyRMgLOhp5c4WOnbSFg2EVtPr8zNNzXPWUGwqNPw9YeQeUsCjmKE-FrZVLozEL_8Bn2mEFdG9w)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/AMMnC-Pigzo4b3V8CRHhD_YwFhKPLO83EcZZHmj8oTxI4LQuod7v-6ipShlYsqRRbIfP9PrbbCKkLOmx1vz4fxN08mFwJRJAeaexsOpU30yIeVJRW7cdeavaR-p_XL6S8A5QzF1yPLMCHIR2hlw7O4Nr3gTsg93CZJcbjRKZruIP03eg4m83ev8tZw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/Je5AQg_jyWG3Jo56h5atdewd5qCwgEMqHeOpisvrSsXpNsBDJMI89cnQBIO8yAKOeHkrCf393YQDVoUhsBwt5UPFQ7bAeYSJeINZ0DBrT-mbM7zVUx-12hcTj_ENLA9nJrxgl1bA3oc_g7HTu53IWyVxvEjjKeAG7qg6c5yRttpkO7AbI_hr4VG4tQ "配信画面の様子")

![](https://lh6.googleusercontent.com/6M_qynGMh8mPNGAxGIJrLg2k72F-SjacElISBZJiDj2kz258-jPc2rYqfKWZJCI0iKHWC-Y2NafyoA1terocyknzPvP0nWRZgIHDsbJlDMcOlNkzyk1R571PBCls6MKkgGQGq9gJTIoA-h857subsSftUsgm4s6jyVmJbdWvKte7jVpawVRkPcsP0Q "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/qBgNU9_j5NAhIikWvf8L0X3wcckjxI-sC7hjYnpZRf4preILbiHuPY6rYZnapUULpcjX3qT5PQ_AATU4lLSNz0OcYd6RW6ovIAu2C7mYO4k_p75cxNi-MoRBYO2cy5Nk6Af-s6H37hi2905ndBP95Ayq3aLC-VIJ-rQGTyPdykQMmfp3Fd0wkltxyg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
