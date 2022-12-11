---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh6.googleusercontent.com/DhN6_X_PSUtUQXCzNQtKeU18WyE_QTMfhdQBicM0BAjhPVT2V77iY_To2344uuCOtSivvTxuMFhZ-FclcdBbfBPom6j59B_16jKVLpxqPt77iJvU_31ma4z_hccXD7Iqj3iJm0g79y9pp6wzrGt_1iV1qbJ9FSs99XJzTrdNm7Ho9W-YDSguzJzgqHOpGA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh4.googleusercontent.com/eE_j_1Of794nuThJdFHONnwKo5uEwq7uJyfH3IIZrhk-f1v8cE0YnHeYaLN-fcx2RVdCsYTGRys83zVwAuzyC040ftyhuLHw4-46gakv_i8jJ5RO1D8_RJWulh20D4gNjzPE_zZhWk0CpSQYEV1EsaUSF720KZ72Txi57JSSwehp1lbtfJdnw7CKGrq5RQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh4.googleusercontent.com/17QtNrO-t0lCRtjpgftGTqzBHkMN8GZmDXsuOA0O1cRYF42Ymm4OyoZdAHEjC1c9k5cOhmBpetz0PsmANn4rh8QuINVDwudk0r5vCaLsBxgBACMqcV9UqzsrLDGaMqPDkWHlYIGk3HmbRMvFC5_lUpCfq15rjV5moYQ3GndFbRF3DyT-gd-cU1SRLLys6A)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh4.googleusercontent.com/DoysOKw1ONY2iFxdyeGtIt1fq0jsHWYRFxhru5LdvQK3Y-1vc24IxmgtwQfF2I8OuWRe4pXiEtVgdrxU9r4WygFzmVB_K3-q3wxT6baNxP51sl73tYwVtgFKX9B1ENctlwz0reZve1cCSr6kAR14r8M6x_PInFU3C531eP3NWxEM7CNgz6TwhN3GTSGTfQ "配信画面の様子")

![](https://lh3.googleusercontent.com/qKrxe5yT_fwBQCDUE0FkaR8jLdC3_d78xna33kv9vyt1z05GuQFS07634KQUHkeSUrK7rJGC4eGndpVDpXIkulrJbRyr4ktYZac59qdxTvDFc_mLQNJdZUxAlwOBtZTrf6cwvXFCjRTufc5CjjWoTAc0iwO_a5uV1X00i7ZgfJ9okv948mmUSMsCzio0-Q "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh4.googleusercontent.com/pKo71zJOKxg1sZUjROnHJzWXm6Wjj3szgO2_81wZA6sSiAmFf18G8zaBOcw7XUjwE9FndlSsIRjJ0mK2Q3ELows5d_4921I-JSSyUF8V9HxjEzISaqFIoL_x6Vp9Gpsi50tNyKlE6YAy0xFwhqwYVkAqSGKNW_oQPepsbj9lKVJi7kOBtSj0gNgMcpWCaw "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
