---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh4.googleusercontent.com/bt8eNMY_aDxAEG5zwTT0q5S7EMfiae9hCOvJT-E6yVvByDjzur43r5FJTFSTqGd7hZnqhRgBRBYyDAflBMIOwOunngIdKNJ0zG3LrcV6Wmq5v4Yfko98phQDEE8TFOu0TDw46E4f-xVvdgsR8y1lCYQ "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/wCGT2crMTMGNq2ni64U-UAR7x3P8kezbv5auerHLAo-4szGy0Qwzkfwq3TmJuefW_cPL-pMU7MdEvES1vAP4UyhkkkcuMzZVBcmUk3ZC2Fiy4bCArBhBdHCacKLyekZZW1xSvvd2l9Jnrp-SL9mk5rQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/VUl895DcT8QSnFVtBOhRzpWazJVfcB0hB-c4215dBiRrvDKIOYxQTJLoIBMbbsGji3OX1MTw6BvJTigQw1RcwIkwCP2vGeM1wClGwVOdiOge0fLD2ZurN_RnzFdA-PfK0CoDR0GAj-HR8jOxu_iigKQ)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/MPt8_w0It5aLVi-fM6mqtLGOZadv0D_eI9k8umhhgouOr1GTMs_f5MJtOCInRoYfhCkuikDtsCZmAPXsRQCIus-0gxwd922-Ccmm62dNyX6ZD1jt_V6xngLn_fp0sT6IofQDSPasr2-VCzSu15pg7jQ "配信画面の様子")

![](https://lh5.googleusercontent.com/ziBV0TjdApdVrmduEWfFU2gNLL1ndN6Fb6yDQFzlJBUzzFtqjC3kqXlqNSTzqtszkeLpMQUv_QKtTx22TF8RVMwsms_Yk_vVYgJLUrE4qE1PIOFsYy9GBHt7RwE5kUv_SM8eZoMNb43prE4FKhFEYL4 "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/NWg4Bey_Gg4my3K1cG8IRHjl2NDNps1JsCemFoxH-QapTw9HooIDDkqCsanZ1zMKnT9kPNAE5CgZ2fXgxMvxq-bUkLAmEG1TKu0gBzyh909LV2hWsROoDGWYg8G0_oe89NGYruucNebbXlrKSj__VTc "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
