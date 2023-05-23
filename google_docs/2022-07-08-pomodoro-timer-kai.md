---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/i-UX2sUA-r4oMVoEDqZAPfuC15GLfj9Xid9sJ4AOZdmwEmtXHy5_fIW9kIJM9NvCvN252yAI_9SybWdwZNkxAURwGlxp5sHXm77MvGm_jjqNg3y7EzLgMYBTo_5tRRL09zYmR3w5DMh_KMLMuqy0nME "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/WlNXS3zqO3EO83INUSRBGUugrRhgMKcEu5jrHt3UfeSr-6-H61jmXWiz2QP4Yd-anOLAgwbjtfZU5IMHi_p14gmVM0RIECycd4rgktS9ifTu4HObTzgejDiTlxaVAP8hiNkO5tByw4bImV2qzCbu6Uo)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh5.googleusercontent.com/gMsOZwkSMiaRHSPY4qT6iTmq5HFu30KZ2YZ3GT-HH1RdUZqgKtaaz2o3ICb2GC-M1N3-q-D6yuMucP6mW7M3iOpd8OxjGCcMKBAqf7_6Q9s6lyt-wkyXoq8NViKAq6l0ThdoeoCeWXkJLMD-9TC-2JI)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh6.googleusercontent.com/u0OFtxl5G1rkR9lKQO10WOVMF8Hd0sSSvVF5Nd9QY6Ezq4F6lL3x4U_RBtwX9fVcnYvu3zD2lTLpNUYDJi0h-rvZAz0xF2Rm_iKkykoGkm0xE8MBwuoXiDLTsRYkwvVWeofeJCNRY5pW-ckLfajNeCs "配信画面の様子")

![](https://lh4.googleusercontent.com/gPadTjX9ySqrZo4wQ6F1LS7G_gIwQEK1pcCxAS_5dCkfYkCEkbuA7POgImi_U-IdOjE_MZ6Hc2jevBFFnCwhDun6PogfVyk3oDnvZSfSe8s5IZ2qKNvv0NOEJgfqek0Sx3MQ6TomNKHEsrkDE0hc8I0 "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/RjFHcj0RQ7csPvOjGQpo1VjqAkOFTXkvDvA4__u_aK-lK3b4qSDN57zYstNM2rm2m3OorAnmmabS02v-vDtnn-Qo7dt77Hwp_0O6P4HO2VTLjdTCsONn81pksMXN2gJjITcaVmscXIGe5U_SBySpRK4 "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
