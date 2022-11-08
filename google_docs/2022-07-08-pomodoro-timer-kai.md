---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh3.googleusercontent.com/uW2Od4D4EqHRDTsCCqrjQQiZYYokxYpG0mlO_Xzxl83edWTySIJaSBIrUw0heljVRj2lcZRMZhmAzEjL0s0RxfCeiYdGjqm9H34qm-O10N6PnfmkAqIt-PU31s5kPbXMMpcaI_AfrP6vg5umtIOl8v-UTkkEPCX6JzMoXK6mqKBe3Jhqhc60KsGjUxWdng "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/O8NesvNsA-W1DfVwusLwjV_J6Nn4-D7_1jRnzO3K4TuHQMVggF8q5y9pGEAZja4OoCgv7kN-SK3JK5J9V1uoGKm9EgmijfC2m3SpAu_B-qr8m_U58LcIe_Sx_klpRB9jFizlRQdf0JqiSqRYTfutKB53f7FBh_7kGyJnff7jlp7PBD7J8KN8hMhalbIFOg)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/vzQ3z42LPtV0W6SGIkJ_rQRSKuqPUpz97LDOyp1y3dAPQd5jToUqTIi6EBAHmUVutAKZLVJvsbgU6piKDJW_fiOMSLGmLb2LD3Wy_99pOm09mCgrkvkRs88Awj8ZLSRkBgSSV-SeNMs0j4Zik7huVXX-MkYS3X_WhygO6q23OTpeY8jz_K2GAsccAO46vQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/3HPu64NY2FvNNcQ1bR-x1RtS1kOxOfjd2WNR2tv2ENx0CHMqDLv2nfZ09FSsU489VlD1boTymEWU4GOeIu5pCYqho2IFw-Nl4pEN20EEo22bRagzJZ5pVkaNtwasef-R4FSAYDB3eYlZxGKM5vI6j3Si52DDvG28_RYMidYac8cOqlzGBxVdUWpXGKXgRw "配信画面の様子")

![](https://lh3.googleusercontent.com/MRIfUEJl_z669-S6o7ybY1eLgoCvLoMmiEKwi-2dPppsHpOytIzvwICeEoYtppBRLxEJVbaYTScz33jz_rpaiDzfZ4QHpapYEXI1pp790tevEceYHKumqFxrbEMhS9Uml_1IfoyKTGaBPSIYO_3EFJbn7H1h0kf7s2TYvkDcPLiPVrEnKbW_hrhWzE8R9Q "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/PqEFTdjszye1OIOBcUwsKHy3c9mfx4K1jUJddw22lfLBoyuRMYz3cPKxieqAQLCEhJcK1w4WpKaic7thdDAE6b2HYknewB1TtNtqQYcmm9tR4BpAcexNj5FlWSWUe9QH_EKqFmARyB9uRwDXjKyfTFj7oy2CsYvC5jS943lIF19OtbS-hN8_BKtP3x0xVQ "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
