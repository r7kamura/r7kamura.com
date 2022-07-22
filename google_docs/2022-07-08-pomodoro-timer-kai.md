---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/fWJm6IJDMFDDSPJ-_Ie--8ul7mBi0ARaoF-HADQmAVN6ysYllkIdP3MRe89T5wgX41zagwogc-U2lk6BAc19xySaCDtWS0TLlbOcXLUxsJwtV1UJcj1Sk2UgrRawplynwwOQExX5wyN36HefnLtMcJk "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/amDtpycFUP7Se2X6gp43WJVOd4QvqLpGk0PL2gU7LWVoLTNLZYTeX_dWViCK0WOTKY0LfRqFcC7yzGaHVQ9gaZ7QiqdzahPzBOAaS4waExN3AvBOmzlBOytRZr-kZHIoFQp7owt8T24hj7FL-zdz8KA)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/P2jr-izxDbxGf2SNn7ciG7wKN__jwfhCrmNWZ4wDdBvOt-Cxiu3Phm4O_s9P-76S963Pt-3ajg45vyhcGNrv9u4GTeAdckWOHDcpADm7-XzQZ2ldDq5XNWECQnhrUzxrpICIUipVmUaYE_SxnMRQVtU)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh5.googleusercontent.com/TLVAZHAzslkt2wnmLaTThF2uGjxTq2WcwRAteb0UsWTlqf4SX1tPF_Un0Yj8iTSaDnItRjRX2enrGxa2dUetJZJNy8xvWTEu9rCO-HOj8cKt7a3kOSknot0NEBxd9JBAb-H9fb-rKwgf0S6coV6DuvU "配信画面の様子")

![](https://lh3.googleusercontent.com/Dd6UAmkLPNpHoUlz167JqmvaB4JiAv0zNh4hr-GmuVd0Xd84dllIhuhpX88uSGrsoqHdC-n_-Ll7HiUAVbuJZCCGhV5kUO58EEmkhZMRaZVGsoTKeOJK4FXG5iCU4x3_tRazILmWfMA43g7GgF8TMPw "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/M8xRiqGUdtj5fK3D_v7-hPQyKJD4vxXNPEbLm_LoZc_3qWS-eB2ychEvlz97GjjmioptaobWcWtaS1ofQJ9LY__Zf-YL4ER4aqHi1p2W5H7fqD5FLzvdesp5kjwQw69_9LUqtLDzEO-b6RUHVRnXdc4 "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
