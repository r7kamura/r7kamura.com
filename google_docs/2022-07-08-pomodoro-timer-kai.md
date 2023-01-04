---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/t9jYIwd_GZj0i3TQrVQ6PaMrVDM7kgHTRkxFWt_h5dBXkhLa_9uD2PYwtsYHHCQffki6zHobkLWA1u-PW3MvG6mr4kBzXvfhGWaIMBoqGipqq6CNgL9bUp_sC60vipqZD0evoGv5oj1EATMrsv9rMmpTjAlam5Z1B7YRmj5CEjk_xJn8IiYSOySzzBnBqg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/ERsXq9RDWMMGh7-vSEw6-gcqybxx9VhZnRN4fR3hYSOy_LW3eqBorcyUJsKGVR8vperK2sifaYKEjzw7Mck3frpH2IrMMybihltWm84TS8mBi1PizAMKgzWix1ZxYOK6hdMcUESdD5R7KE3wMNC0xrcc8DdX8Mz48vAzx0yC0psug_yDqfR2esW9zrRLNQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/H8QCgtFZ3hV538mGQkmdVaLcTTQ6v4t3d6_NlO_a267at05Mx1NTx6qKrf1f57Keo0VZ2wmXLK4eSDPX5bWQV-oRlYtPEgujQJwW07oqw6B2WPuuggJnHSrqp-CpIv--50hVnFzxvbuCP4uruEShajeh4oNfu8wSqr0cP28YQMHaSsIxsFbHls_M6V5E0g)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/WgcBVb23y2B1Z8XfEDPBF_SzZISrk0dalvY6HLH56Q_AwktCoic0wMPJ9cAS7ihcVlIG8tg8h0ziIKQLEpAmxt6c9cluxB4YT9Lz63GlHEQcMtDN462wyI1Jm3niNP2KPXCLHvKqk_yVNNPKbrMKxwMAqGhoc577Ue_7yi5xDb6bp0dtWb9EcZWLzkFkPQ "配信画面の様子")

![](https://lh4.googleusercontent.com/U9kAmW7n4zWF6p8sirxkS-C6Q1VboD0l1NfJSwFTaikQ1ukQfFbOHZrPS2ZSWoWxbvQfrn0yb1Y-51V-y71ZVE_wXzD0DHx8jbfVKhEkWFR-_UUrioYamGQRHl1HB5oTmRqeonT0bA8AfVcp1y0STN9KgOYhnQJWakpJ6oY8NOkfh4AYh-c8C49hyCqMLQ "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/SC-dRBYQeB0xHiUwuVYR5Gmxhg8mUyjJ-fDnW-TEYqaJvNRsK0FQoWVdtDNgni24HHXBgvPD1jtSFB6Xsv-emqc-MXUmopc10ubYNOe5wbeaFC4FXll0F6S5BexA7i8U-0Xe9lUeCeYQIDg07X5e_GcTTMiTHPIKS-8KvcIoT0fQpHrNZba9M8vrg5E8AA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
