---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/KbSoa69iB5LW1sPKxpNWjTEpZYtMJTgDthjHTPXlG09laRYYy-vSMUvpi6HlVshCo-u2zV9nWcAUibmaWlviCTdyAXTH4Ef-9R4uyUtHXTkg_3UzHZyWu3IDd1roOWL8ilv9FIMdc5qao7rS8IHx0yg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/18u5Y3MjZR5FsAqfxerXM845Ttb8QwYZko9Qchme1g-Vv3aLGTeeKg0DbutEgVHZsU9M1vnMdeM90yTUaRv2Obr5w1dkjOCUKfy2iPA3Rg0eJJ8SbeK-37YyJIwtpaGi3nyD45z53O3m30CFW5275X0)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/aJ6L7ybdmUejzgFAUk0cO4SGc1lpslLpfPR8Xaaj9yl0pi4uOmitKSG22o3JkgfNEXQl5Pn3g6ea8bunLGx8xKGIAIk9s8ZsVv5pd0TPD7Rr3AvzzDDiGk8IY6k-dwbkOmJRSE6FLOTY-E51KDFXJ0A)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/mUOQ0Fw5hXx9bhggg03Py3lO_123yAosN7lWH_jebp04mCNYJ6Jg99P1KNOj8XBfwQgQzw2iw_Z_DbIx4l5rTHwKJy4sEtbMw1xIPpbTMa91pR4YPlia02p3H_gRXrKnQWW6mUoOaYiQX7SPWW05kRs "配信画面の様子")

![](https://lh3.googleusercontent.com/5XaHVzFu9atC_j80CM0y7lylhPFGzp3HelxL8H5CHZvAR7VkD8uQ3UcHwVC7us5AkxY2rU000Ujj19QV5s6qtLQJZNNdM7JmisOzgpQ1rZLDwLMHMDZiA1LqlAUt2w6mlq-Wivw8Tss8eKfhg5gP-nI "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh3.googleusercontent.com/7VSiADMUr2Kynyav9B0omGu2CIc-bB0LwOTBG1lUaR3BBvoF6OT0MlclHIKGKUFbPcF0rA8_r3JdB1DI6T3wd8AtFttWAa-hAYgAxbD7c77-76cFBbu7TuGMrK5ez8IGe5Yk_VoCX4hVWiKQp7VIeR8 "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
