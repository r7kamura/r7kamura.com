---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/XqG2rs-pK94vrKcvY6zHdVwMfFbbCWJBPG2DvJBSYErdOOQWQMrd7iiSnayD94AwI9iCVOT2AFLjyDEsEk3cpkwTJMPW8i_6ZSNCSwrlBWH8TVLYGbOAijL9aEkHx8KppSaKOuVs3kwPtzTU7lAirjk "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/g5Vg3THq6Td-GykPBjmTm_4g3DP-eYrHdkN8HpNZT6doSIVa57NuX_svh3b9xnNvxNcx_Yxq7vfLo9J4ZDUNjb7oYaMVanbhJH_zONaWKkDEgQgHidjTdtufGA8vDCFiv-NWLqpRxzHvGg42y4ZfyZY)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/D88U69082SEX-fXCFXaqMa_wUcy5o1lVL1icynOuDFCPI8QdMZdwAd9VtNyxjwfTE2C36SB3WpmcW-J0ChlkvyQ0Ta4B0Ay2b1WWtAWp4CAafXXfmjD79ueB0KpQ1nYwemgJ9hrKSbrtiTqcbZF_e3Y)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/hcm9brFpeHUhpGkSm-lC3Q8YUFStqGqp5RoR15U6w5n95kxJtlMZ4vnF2eaV996_nX1uhu4HGbiAEIagFgWGIPonwB8gV2FtTU_YFG2vN3I1-T9nqRkb5lu54kVoqudgjQusgTxXEwgPRzgQ8IlhiYQ "配信画面の様子")

![](https://lh6.googleusercontent.com/U7q82TF4PZ4PKLeLx5Nv7MHjq0510N15vtvduAjSjpFKAEmK8jGink_zUy_dpDwL9Jf9T95ijFQ5r1xKXaVcU-Ct8zmkqMaVIjAyDPSA-ATWQpv4EIAHIZz318AcU2_TVbiCKMqnJJ_ZHQER1fpgitw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/5MvgOl1yvSIt-8GrgZSaO5Yn666-QZQeEBQXiA9V8ma7So-c9LmX7ob6GSkPDbzxn1W6SmpqCax1-nYiqZ-5w93IFGcLmsw8q3zYeYCxByKbMpnja0sB4l6t_70dOPC1qC3_rYG0ZB0maQEKEUioP8A "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
