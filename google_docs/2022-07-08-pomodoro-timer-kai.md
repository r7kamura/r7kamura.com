---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/dYwJmYTZ4bwqf4ZCYQX-wFl-jEI6uALnRLdPfKSrTtljO6pLG-AltLuPlc5nJOI-T0la2m7h4f3l2fI_ba1sxF-fYdD9baufbqBZBBzxWNMEKkgfkpBQL_ame_dYg7dnTvZIEqSap0r3FHtPXJupe0-aGB2n_8b4mQD2MRU_xrBI4klinLqEf6MyKA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh3.googleusercontent.com/MFvtPRppXEDYrmHv4JqSAbIznAT5_WQS9y4-GU4-L9rtrobVhyoLxMvVlP-rBO-lIf9J2lAL0iRIUgp1an3b56MgrJ6ZhIKT746oseegE4QZwYZ10Iem0d2uDop2Xc8BP9SOKXCYKfiROYFvXNZLYeClNjmCJT_C1jSo3Lq8PuIKqkDp49xOERx5yA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/fAPoDJAGL_yKdWarr68TLbOrg8LLvEBkHzjIoMqOkZWFH-u2UG1PiF1EM3oyG5TyeDLKm3YN8vif01VX8HqKBsBVeay-yd5dBBEZKqWIJJWb5huEd0xZo4GyyWE1RkGhdbH68yQenKr9YajaOwXOOsF9OE34aLPJv8cQKnr6I4Yrl_s-6_TLLON-bg)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/6Y91t-odeF3BD0Xgt-SnUB8tz0k4o_X94L9ArHyPxhKREgFkomgYAqq-IbyVQcJ0ZnRAV1FoYr1gmnJ9CpLuPPjD-Ea09ZzA9CNHXo-okZciONZ5l520Ww6bWnUub15Eleb6_xqPPR6mIQDswPA_iFCZ6TNpa-mZH78drIgXdU1hE4PXX0nLv4-ouQ "配信画面の様子")

![](https://lh5.googleusercontent.com/7Y8LD2DO6rbHb1j42bzYMNpUXC---VtSRVe3b0gkKhl15NWp_8Tsnyom8uL93kpI8CmK5Y5FHVNR75DkXl1CFtlwP7F2BGSyBOl380OFYcXOcWpywznDMJuJlwQX8eZ57SdUPQTyukFLDKO_EQCRrYi6q6ZxdXwaNhucKt0V_r_0atud-nX2TLJoDQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/PmKHctnsW7RJMMggQZprXk4htegOhx-TrDhtHJLdF_yPS5In-TdLFkZJRNsjSz7be_gqZIn-9_2UwnqEIAF7aMqG34cS9Xf2NUyyFNM5n4gPdTJynV9zNE45xma90yxZJz6c9oFElux0bnehA9V84cq-nk6YlYajWk9sWwoUGKrjeWCJgpxmtz8JIg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
