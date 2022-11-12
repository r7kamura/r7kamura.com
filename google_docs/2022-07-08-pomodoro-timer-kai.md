---
title: ポモドーロタイマー改
---
[作業配信](https://www.youtube.com/c/r7kamura)用ポモドーロタイマーの改良版をつくった。

![](https://lh5.googleusercontent.com/c8UmwP11z1FBYmdGf0Ct4oFekYzFUEgGlgqkfnRa6GPwOsEVRkHK2M68gxGIneJzH97GgQIR28l4CDJ8mewAyIMSp14zwR8SjgIU1y6RQU0cTrjsiOflR7G6V6x0J47geVuoUvkcHrkPq57UU7_a-Stue50YRe6frx2Dwdbf5pvv0m1qqe4KbPOlmmTsLg "ポモドーロタイマー")

ポモドーロタイマーを表示するだけのHTMLページとして実装されている。配信用ソフトのOBSには、URLを入力すると画面上にそのページを表示できるブラウザソースという機能があるので、[https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html](https://r7kamura.github.io/obs-browser-sources/pomodoro-timer.html) というURLを入力するとタイマーを埋め込めるという寸法。ソースコードも [https://github.com/r7kamura/obs-browser-sources](https://github.com/r7kamura/obs-browser-sources) で公開している。

50分作業 + 10分雑談休憩で朝6時から始めるという、自分の作業配信に適した設計にしている。視聴者と同じ時間を共有するために、自分でボタンを押してタイマーを開始するのではなく、時計の分針と同期するような仕組みになっている。つまり、毎時00分に作業を開始し、毎時50分に休憩を開始する。タイマーの外側が分針になっていて、内側の緑と赤の線がそれぞれ作業時間と休憩時間の目安のための補助線となっている。

![](https://lh5.googleusercontent.com/QbDPQ8v0dIQ0n3rAKcKhGCjVljUA4_NV7U82LLyMEoCbMt8NHGtgC8ilaNxxLJW9sLm5d-Tt1I6V1o5Tdfh2GkwMXv7QmgMX8dMrmppH39T423eCddgPObD5OVqFxpm_GIHeY_F9XQc8BQyUCHGUP_-JjoI-HF3iSpQAriF15-FXS7z1G3QaPu_wbCwI6Q)

このタイマーの実装には、SVGが利用されている。

100 ✕ 100の空間をまず定義し、(50, 50) の位置を中心に、半径40の正円と半径45の正円 (と見えてないけど半径47の正円) を描いていくぜ、という実装になっている。

円弧（円周の一部分のこと）を描く方法は主に二つある。一つはArcという円弧を描画するための機能を使う方法、もう一つは正円の外周に破線を引く方法。今回は破線を使う方法を選んだ。

![](https://lh3.googleusercontent.com/Wu34MqboftSvcbRwMMddtdKSd7ZczbpdgLk27Ruvor4p3t4Hsd8v7fhr-RJrUArXTg3uIApRhrRv2x0QVHQFHGIYvvawk6M1PGWt68jJdinn65sqfKqHhr1patuv1XExnHtQNb9OKHF8qySog9rmXhAD5ewC7dzkXw0ffgCm30ZsdnQ1wXllDILTL6RhCw)

あとから定義した順に上に重ねられていくので、次の順で合計四つの正円を用意して、それぞれ外周に適当に線を引いている。

1.  半径47の正円 (半径45 + 線の幅4÷2)
2.  半径45の正円 (外周に幅4の線を持つ)
3.  半径40の正円 (赤色)
4.  半径40の正円 (緑色)

破線は1つの線あたりの長さを指定する形式になっているので、たとえば緑色の破線の長さは80π ÷ 60 × 50、分針用の破線の長さは90π ÷ 60 × minでそれぞれ求められる。

あとはCSSを使い、flexboxとかgridとかで適当に上下左右中央寄せしたり、Googleフォントから持ってきた適当な等幅フォントを使ったり、iPadやAppleWatchなどいろんな画面サイズに対応できるように画面の高さと幅の小さい方を基準にサイズを設定したり、背景透過させたりすると完成。

![](https://lh3.googleusercontent.com/qzEft2P6RcR1HHcDsE5o9OHpws4M7HznY6lEZe3r9_acdV3BIN3NIUSixuiwu1nrZkQ4lCLCX6k9Klp8ArVA1SYV7UOFkHxGx0OWyl85hRQ6qFXbpENSsT6eqLFHlr72pTlxJm5az-QMlEWh_qZFa_nx3wkIgcKkGhrstk_W3h44CDQZ_EgXlfapf-mEow "配信画面の様子")

![](https://lh3.googleusercontent.com/KnKOUlMYKhBew9Xp_9Z6b1AxnCTI0hzLKgagt4ta7DzPQ8o1jeI4Mhe5xc1LO0_p0eNMHy58tQaHWt436KV64qRFOo6dm1-2Pa_4_lykaQJftpy8mIH5psaI6-iOMkgSsFs03uyAzuWnCklVU8Y6GtDFMjRGpS24lx_k3Le_shhP3iAhKIDgLGN8YMEK8g "ライブコーディング中")

配信画面ではこんな感じ。透過の背景色を入れているおかげで、明るい背景のところに配置しても視認性は高いはず。

![](https://lh5.googleusercontent.com/Na47yALdwixc5zNWmuLTvqZvWb8aSUvPumVi3AKtbHF73PkvFOEvYPQRU9UEeCEdY_lSYXa6SbSmBgrnoq_Ssz_AZ-N7WHrb8c8LJEatMRNHPPYYtv7jYgzgcG0MwV_ZwC8qP46hN5oMXqu6hTb1S9ys8dha8OB74oknCx1vrmal13Mp0vDV5QDAisG9eg "iPhoneで表示")

スマホやタブレットでも、Webブラウザからアクセスするだけで簡単に表示できて便利。画面の大きさに合わせて適切に変形するようになっているので、縦表示でも横表示でも使える。

まとめ
---

[作業配信](https://www.youtube.com/c/r7kamura)用に、[ポモドーロタイマーの改良版](https://github.com/r7kamura/obs-browser-sources)をつくった。SVGで正円を4つ重ね、外周に実線と破線を引くことで実装した。

今回はコーディングの様子の一部を配信しながら実装してみたけれど、OBSのブラウザソース × SVGの組み合わせはかなり楽しい。他にも楽しくて実用的なものをつくってみたい。
