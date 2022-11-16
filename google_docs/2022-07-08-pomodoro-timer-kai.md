---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/MWVzTtU8ldWy2gRL4Pq4AzfI3fUl37ZVmDKe4EDd49aUUs6JCrtXV31RwVx69TAaaP-vgpgL6RRoUso5YhaDGFPrs_sBMB4jlFu-Y154rAK3U-3Qjiq3JoeWqO-bDnAZbm9KbdbDbU3xMh7Y9dkKRocxmXb2AXcGegUFg1XyZ6NEpqCkwWrxr1hSeNb_0g "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/jxJLP-tWNsS-gtsjfOoRDowZnWmEU5YIzsnmNK4gT7RpOqpZYbdALZGafVwaL0knqs0OtG4AwSjjJcZvgNDyxw_F9GmwNME1RwLOT8u5uojjYm_EGSI4lrp4f0YYk6a-gs92d2mbLFPfNSgDPUo1otnsN1BmH92nYvnfu0IqlJmAnH5mzgtRyEnX4AsvkA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/nOeDYe21fF7Rg9TWvq7Ug8ao-bcOlwEPmWwjGwiSrlatch4xI3pHLWiZb-eZ3LO76W414Sj3gVsE9lgF7z12X8p8Mt8djrt-DRkO98vCsThSU26aHX92yrWIHWwHxomSUnqzrWJzGp-4XO0OhfQ2ViCaK1-nJJFG9WURh5hlEwt4s7x8gqISjyT_Aso8VA)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/2aVoLOBblo3xPNEOnaCFXYEYSfOpR3eleUAxpMHlAurCRvFq6kSSjG8HPICs24sbPlZs2BC-CU5R-K-_NZwcWxv5L5FKjt3WjkkqJoHe4Eqfk_jk7YIESQp7YmPj7cYDHy1yq-VpIKv-GfkmMCjfmwcv7SRpjTwM6kRydewMCmrj50-j284TAYvLk2A9Ew "配信画面の様子")

![](https://lh6.googleusercontent.com/nrZEOr8ZzOpvQGe0ayafkjpvpxqnv5hu1kZLkGqQ2-v2hJbUj83UO82SUlMr8aCzseTCtvezpp_Y3otcZO2ANmynxgwBIZu2ZGpuFDkVqyB27Y5GK1HbXKW8EwkE2wVwyImMkdze1hIDDgSU_ZBCOP_oPhkcLcfKTqTRGFglgxlykZz2H-RRtK0GZYjTpA "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/rNqo2RxZMC5bb2zTtQ9XRvGqAcyTbYhZBTzy5JAsHeiM4iLZhSuFxe2uD795ZlVwqr6iaeT2i4Ua6T6JWMYDWxXZaIQA0HVhml0wv0oCmneOQgQqoE1uIv7Uvg03oeEOtbBo7lhYoYvmXZhXs0BokiJZdkHK8NZDp0R-IOZTs2hSthD665Fp0Jk_6cnngQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
