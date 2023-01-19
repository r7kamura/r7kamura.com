---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/Q-udesCvj6BNsy7dnO88MSYYH-d1Chk1-IQWbcZFfWPySzRojRBX4PRQEJtAFuEuc0zkvX5DYYotJCMT3RIIhEV6VUkD1bc6rM8ZkcclWD7EY21OIq2W7AFGBduDFZWeKavoTcfU6wdMLH450X-fmB1jIyiUq8hMUzPwYNCDRfiMmZWC0417M-XdsDkRnA "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh6.googleusercontent.com/LsjgCyNG3VkUefX02MsIYffZ5QaesdT-e5Llz_oLbOWGqGb2HnnLOWVcbLKaD78ZBXCNZKd0RryP6Fc3TSNBz_RNoyGCxF0NorOBtoEgUlvOPoJ_4fr7qTXDBzisIi1QJvKt4MWbbmHKxbjc7L_BNkSsrQwdJF_ROtvxwj_6px4zsH8efJkZ0v2h9EDdMQ)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh6.googleusercontent.com/YfFSHZZ-KYw9tOvwZTe24HEAIUBB7OPU7lqFs7elt_LmQvNijsrN6i3OBuVhx2ZNYGU7vj-jnScM5OmfTunyIt-HoLhCi7R6vpmgCW9Lfj2dqRUSh1z3CuUBUlXG6KvuOhFawdFdjuoyusWgfwo2j5Ny6FUSF_UZaUrT8DEwzdMWwVRK3HSZMtltBpXY8Q)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/Ztchy_toviRIybxnRDxrmgwz6YifI1lNdrQkPsYhk8Tm72SnX2Adc8YDLcNpSBDpoOEnMjzPCk9bNj1zD3RW3QO7oNh979RU9-MKZt-MZaCC5DC6gwiq9jdJz2d16h0C_U1ay2T1_vdb0CEpN_KfqO8CyK8w4y7vQe0fSt_xP9iyil8o8wIvA7Zlv0hqxQ "配信画面の様子")

![](https://lh3.googleusercontent.com/a342tTupuj7kHVDQ76wDlrfQgOdUAM_b0gbMbUZLeRyxxA0J-3AipelMIECgElW7TblybwSMo6iCdVCT2x1i9oAN_bMzzCUcN6DLSBreey9zVIYs7DZOuDYHrS74eknaIRZ997s2MyMBWZie9i2NvFnZDHEBA_Z6-wEwXb1bYp-e2ZCP6LWef1PsCvY09w "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh6.googleusercontent.com/xd-j_wUJSYIbM5h5bkpdAEwqbljtaJ-c1_RBkSIx0vyRiWx8tV9Wk6RAMOfhFNq9OoqfAgvG_y5TVQ43K8F9ZAVOnNobgo8UohUK92v-NYADZ9TLM7p_olF2ZHqIZcrldCC8sG-6Lxbsw7wn4foo7UlOtEpn8iuL77e7KKyuhvn-1PScd5HCZLRyyc8oTA "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
